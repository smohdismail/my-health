import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../../data/providers/biometric_service.dart';
import '../../data/providers/health_connect_service.dart';
import '../../data/providers/pedometer_service.dart';
import '../../data/providers/storage_service.dart';
import '../../data/repositories/database_repository.dart';
import '../../data/local/app_database.dart';
import '../auth/auth_controller.dart';
import 'package:drift/drift.dart' as drift;

enum ActiveDataSource { mobileSensor, healthConnect, manual }

class SettingsController extends GetxController {
  final StorageService storageService;
  final BiometricService biometricService;
  final HealthConnectService healthConnectService = HealthConnectService();
  final PedometerService pedometerService = PedometerService();
  final DatabaseRepository repository;
  final AuthController authController;

  final RxBool isBiometricEnabled = false.obs;
  final RxBool isHealthConnectConnected = false.obs;
  final RxBool isMobilePedometerActive = false.obs;
  final RxBool isAiMinimizationEnabled = true.obs;

  final Rx<ActiveDataSource> activeSource = ActiveDataSource.mobileSensor.obs;
  final RxInt currentLiveSteps = 0.obs;

  SettingsController({
    required this.storageService,
    required this.biometricService,
    required this.repository,
    required this.authController,
  });

  @override
  void onInit() {
    super.onInit();
    loadSettings();
  }

  void loadSettings() async {
    isBiometricEnabled.value = await storageService.isBiometricEnabled();
    isHealthConnectConnected.value = await healthConnectService.isHealthConnectAvailable();
  }

  void setSelectedDataSource(ActiveDataSource source) {
    activeSource.value = source;
    if (source == ActiveDataSource.mobileSensor) {
      startMobilePedometer();
    } else {
      pedometerService.stopListening();
      isMobilePedometerActive.value = false;
    }
    Get.snackbar("Data Source Updated", "Active source set to ${source.name.toUpperCase()}", backgroundColor: Colors.teal, colorText: Colors.white);
  }

  Future<void> startMobilePedometer() async {
    final granted = await pedometerService.requestActivityPermission();
    if (granted) {
      isMobilePedometerActive.value = true;
      pedometerService.startStepListening(onStepCount: (steps) async {
        currentLiveSteps.value = steps;
        final userId = authController.currentUserId.value;
        if (userId.isNotEmpty) {
          await repository.addMeasurement(HealthMeasurementsTableCompanion(
            id: drift.Value(const Uuid().v4()),
            userId: drift.Value(userId),
            type: const drift.Value('steps'),
            value: drift.Value(steps.toDouble()),
            unit: const drift.Value('steps'),
            timestamp: drift.Value(DateTime.now()),
            source: const drift.Value('Mobile Motion Sensor'),
          ));
        }
      });
    } else {
      Get.snackbar("Permission Denied", "Activity Recognition permission is required to read phone pedometer.", backgroundColor: Colors.orange, colorText: Colors.white);
    }
  }

  Future<void> toggleBiometrics(bool val) async {
    if (val) {
      final result = await biometricService.authenticateDetailed(localizedReason: "Enable Biometric App Lock");
      if (result.success) {
        await storageService.setBiometricEnabled(true);
        isBiometricEnabled.value = true;
        Get.snackbar("Biometric Lock Active", "Fingerprint / Face ID lock enabled.", backgroundColor: Colors.green, colorText: Colors.white);
      } else {
        await storageService.setBiometricEnabled(false);
        isBiometricEnabled.value = false;
        Get.snackbar("Biometric Setup Notice", result.message, backgroundColor: Colors.orange, colorText: Colors.white, duration: const Duration(seconds: 4));
      }
    } else {
      await storageService.setBiometricEnabled(false);
      isBiometricEnabled.value = false;
      Get.snackbar("Disabled", "Biometric app lock turned off.", backgroundColor: Colors.grey.shade800, colorText: Colors.white);
    }
  }

  Future<void> connectHealthConnect() async {
    final result = await healthConnectService.requestPermissionsDetailed();
    isHealthConnectConnected.value = result.isSuccess;
    if (result.isSuccess) {
      Get.snackbar("Health Connect Active", "Connected to Android Health Connect.", backgroundColor: Colors.teal, colorText: Colors.white);
    } else {
      Get.snackbar("Health Connect Notice", result.message, backgroundColor: Colors.orange, colorText: Colors.white, duration: const Duration(seconds: 5));
    }
  }

  Future<void> deleteUserData() async {
    final userId = authController.currentUserId.value;
    if (userId.isNotEmpty) {
      await repository.clearAllUserData(userId);
      await authController.logout();
      Get.snackbar("Data Deleted", "All personal health records have been permanently erased from local storage.", backgroundColor: Colors.red, colorText: Colors.white);
    }
  }
}
