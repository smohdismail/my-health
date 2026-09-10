import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/providers/biometric_service.dart';
import '../../data/providers/health_connect_service.dart';
import '../../data/providers/storage_service.dart';
import '../../data/repositories/database_repository.dart';
import '../auth/auth_controller.dart';

class SettingsController extends GetxController {
  final StorageService storageService;
  final BiometricService biometricService;
  final HealthConnectService healthConnectService = HealthConnectService();
  final DatabaseRepository repository;
  final AuthController authController;

  final RxBool isBiometricEnabled = false.obs;
  final RxBool isHealthConnectConnected = false.obs;
  final RxBool isAiMinimizationEnabled = true.obs;

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

  Future<void> toggleBiometrics(bool val) async {
    if (val) {
      final authenticated = await biometricService.authenticate(localizedReason: "Enable Biometric App Lock");
      if (authenticated) {
        await storageService.setBiometricEnabled(true);
        isBiometricEnabled.value = true;
      }
    } else {
      await storageService.setBiometricEnabled(false);
      isBiometricEnabled.value = false;
    }
  }

  Future<void> connectHealthConnect() async {
    final granted = await healthConnectService.requestPermissions();
    isHealthConnectConnected.value = granted;
    if (granted) {
      Get.snackbar("Success", "Health Connect integration active.", backgroundColor: Colors.teal, colorText: Colors.white);
    } else {
      Get.snackbar("Notice", "Health Connect permissions were not granted or are unavailable.", backgroundColor: Colors.orange, colorText: Colors.white);
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
