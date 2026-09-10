import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/repositories/database_repository.dart';
import '../../data/local/app_database.dart';
import '../../data/services/calculation_service.dart';
import '../auth/auth_controller.dart';

enum DateRangeFilter { today, week, month, custom }

class DashboardController extends GetxController {
  final DatabaseRepository repository;
  final AuthController authController;

  final Rx<DateRangeFilter> selectedFilter = DateRangeFilter.today.obs;
  final Rx<DateTimeRange?> customDateRange = Rx<DateTimeRange?>(null);

  final RxInt wellnessScore = 80.obs;
  final RxDouble todaySteps = 0.0.obs;
  final RxDouble todaySleepMinutes = 0.0.obs;
  final RxDouble todayWaterMl = 0.0.obs;
  final RxDouble latestWeight = 0.0.obs;
  final RxDouble latestBmi = 0.0.obs;
  final RxDouble latestHeartRate = 0.0.obs;
  final RxString latestBloodPressure = '--/--'.obs;

  final RxList<HealthMeasurementsTableData> rawMeasurements = <HealthMeasurementsTableData>[].obs;
  final RxList<SemenAnalysisTableData> semenRecords = <SemenAnalysisTableData>[].obs;

  DashboardController({required this.repository, required this.authController});

  @override
  void onInit() {
    super.onInit();
    loadDashboardData();
  }

  void setDateFilter(DateRangeFilter filter) {
    selectedFilter.value = filter;
    loadDashboardData();
  }

  void setCustomRange(DateTimeRange range) {
    customDateRange.value = range;
    selectedFilter.value = DateRangeFilter.custom;
    loadDashboardData();
  }

  void loadDashboardData() {
    final userId = authController.currentUserId.value;
    if (userId.isEmpty) return;

    DateTime start;
    DateTime end = DateTime.now();

    switch (selectedFilter.value) {
      case DateRangeFilter.today:
        start = DateTime(end.year, end.month, end.day);
        break;
      case DateRangeFilter.week:
        start = end.subtract(const Duration(days: 7));
        break;
      case DateRangeFilter.month:
        start = end.subtract(const Duration(days: 30));
        break;
      case DateRangeFilter.custom:
        start = customDateRange.value?.start ?? end.subtract(const Duration(days: 7));
        end = customDateRange.value?.end ?? DateTime.now();
        break;
    }

    repository.watchMeasurementsForUser(userId, startDate: start, endDate: end).listen((data) {
      rawMeasurements.value = data;
      _calculateDashboardSummary(data);
    });

    repository.watchSemenAnalysis(userId).listen((records) {
      semenRecords.value = records;
    });
  }

  void _calculateDashboardSummary(List<HealthMeasurementsTableData> data) {
    double steps = 0.0;
    double sleepMin = 0.0;
    double water = 0.0;
    double weight = 0.0;
    double hr = 0.0;
    double sys = 0.0;
    double dia = 0.0;

    for (var m in data) {
      if (m.type == 'steps') steps += m.value;
      if (m.type == 'sleepMinutes') sleepMin += m.value;
      if (m.type == 'waterMl') water += m.value;
      if (m.type == 'weight' && weight == 0) weight = m.value;
      if (m.type == 'heartRate' && hr == 0) hr = m.value;
      if (m.type == 'bloodPressureSystolic' && sys == 0) sys = m.value;
      if (m.type == 'bloodPressureDiastolic' && dia == 0) dia = m.value;
    }

    todaySteps.value = steps;
    todaySleepMinutes.value = sleepMin;
    todayWaterMl.value = water;
    latestWeight.value = weight;
    latestHeartRate.value = hr;
    if (sys > 0 && dia > 0) {
      latestBloodPressure.value = "${sys.toInt()}/${dia.toInt()}";
    }

    if (weight > 0) {
      latestBmi.value = CalculationService.calculateBmi(weight, 175.0); // Uses baseline profile height or 175cm
    }

    wellnessScore.value = CalculationService.calculateWellnessScore(
      stepProgressRatio: steps / 10000.0,
      sleepProgressRatio: (sleepMin / 60.0) / 8.0,
      waterProgressRatio: water / 2500.0,
      stressLevel: 3,
      hasLoggedVitalsToday: hr > 0 || sys > 0,
    );
  }
}
