import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../../data/repositories/database_repository.dart';
import '../../data/local/app_database.dart';
import '../auth/auth_controller.dart';
import 'package:drift/drift.dart' as drift;

class VitalsController extends GetxController {
  final DatabaseRepository repository;
  final AuthController authController;

  final weightController = TextEditingController();
  final heartRateController = TextEditingController();
  final sysController = TextEditingController();
  final diaController = TextEditingController();
  final glucoseController = TextEditingController();
  final spo2Controller = TextEditingController();
  final tempController = TextEditingController();
  final stepsController = TextEditingController();
  final waterController = TextEditingController();

  final RxList<HealthMeasurementsTableData> measurements = <HealthMeasurementsTableData>[].obs;

  VitalsController({required this.repository, required this.authController});

  @override
  void onInit() {
    super.onInit();
    loadVitals();
  }

  void loadVitals() {
    final userId = authController.currentUserId.value;
    if (userId.isEmpty) return;

    repository.watchMeasurementsForUser(userId).listen((data) {
      measurements.value = data;
    });
  }

  Future<void> addMeasurement(String type, double value, String unit) async {
    final userId = authController.currentUserId.value;
    if (userId.isEmpty) return;

    final record = HealthMeasurementsTableCompanion(
      id: drift.Value(const Uuid().v4()),
      userId: drift.Value(userId),
      type: drift.Value(type),
      value: drift.Value(value),
      unit: drift.Value(unit),
      timestamp: drift.Value(DateTime.now()),
      source: const drift.Value('Manual'),
    );

    await repository.addMeasurement(record);
    Get.snackbar("Success", "$type recorded: $value $unit", backgroundColor: Colors.teal, colorText: Colors.white);
  }

  Future<void> saveWeight() async {
    final val = double.tryParse(weightController.text.trim());
    if (val != null && val > 0) {
      await addMeasurement('weight', val, 'kg');
      weightController.clear();
    }
  }

  Future<void> saveHeartRate() async {
    final val = double.tryParse(heartRateController.text.trim());
    if (val != null && val > 0) {
      await addMeasurement('heartRate', val, 'BPM');
      heartRateController.clear();
    }
  }

  Future<void> saveBloodPressure() async {
    final sys = double.tryParse(sysController.text.trim());
    final dia = double.tryParse(diaController.text.trim());
    if (sys != null && dia != null) {
      await addMeasurement('bloodPressureSystolic', sys, 'mmHg');
      await addMeasurement('bloodPressureDiastolic', dia, 'mmHg');
      sysController.clear();
      diaController.clear();
    }
  }

  Future<void> saveWaterQuickAdd(double ml) async {
    await addMeasurement('waterMl', ml, 'mL');
  }
}
