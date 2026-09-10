import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../../data/repositories/database_repository.dart';
import '../../data/local/app_database.dart';
import '../../data/services/calculation_service.dart';
import '../../data/services/trend_engine_service.dart';
import '../auth/auth_controller.dart';
import 'package:drift/drift.dart' as drift;

class ReproductiveController extends GetxController {
  final DatabaseRepository repository;
  final AuthController authController;
  final TrendEngineService trendEngine = TrendEngineService();

  final RxList<SemenAnalysisTableData> semenRecords = <SemenAnalysisTableData>[].obs;
  final RxList<HormonesTableData> hormoneRecords = <HormonesTableData>[].obs;
  final RxList<ReproductiveLifestylesTableData> lifestyleRecords = <ReproductiveLifestylesTableData>[].obs;
  final RxList<TrendObservation> trendObservations = <TrendObservation>[].obs;

  // Semen Analysis Form Controllers
  final collectionDate = Rx<DateTime>(DateTime.now());
  final analysisDate = Rx<DateTime>(DateTime.now());
  final volumeController = TextEditingController();
  final concentrationController = TextEditingController();
  final progressiveMotilityController = TextEditingController();
  final nonProgressiveMotilityController = TextEditingController();
  final immotileController = TextEditingController();
  final morphologyController = TextEditingController();
  final vitalityController = TextEditingController();
  final phController = TextEditingController();
  final labNameController = TextEditingController();
  final notesController = TextEditingController();

  // Dynamic Calculated Fields
  final RxDouble calculatedTotalCount = 0.0.obs;
  final RxDouble calculatedTotalMotility = 0.0.obs;

  // Hormone Form Controllers
  final hormoneTestNameController = TextEditingController();
  final hormoneResultController = TextEditingController();
  final hormoneUnitController = TextEditingController(text: 'ng/dL');
  final hormoneRefLowController = TextEditingController();
  final hormoneRefHighController = TextEditingController();
  final hormoneLabController = TextEditingController();

  ReproductiveController({required this.repository, required this.authController});

  @override
  void onInit() {
    super.onInit();
    loadReproductiveData();
    volumeController.addListener(_recalculateSemenMetrics);
    concentrationController.addListener(_recalculateSemenMetrics);
    progressiveMotilityController.addListener(_recalculateSemenMetrics);
    nonProgressiveMotilityController.addListener(_recalculateSemenMetrics);
  }

  void _recalculateSemenMetrics() {
    final vol = double.tryParse(volumeController.text.trim());
    final conc = double.tryParse(concentrationController.text.trim());
    final prog = double.tryParse(progressiveMotilityController.text.trim());
    final nonProg = double.tryParse(nonProgressiveMotilityController.text.trim());

    final totalCount = CalculationService.calculateTotalSpermCount(conc, vol);
    calculatedTotalCount.value = totalCount ?? 0.0;

    final totalMotility = CalculationService.calculateTotalMotility(prog, nonProg);
    calculatedTotalMotility.value = totalMotility ?? 0.0;
  }

  void loadReproductiveData() {
    final userId = authController.currentUserId.value;
    if (userId.isEmpty) return;

    repository.watchSemenAnalysis(userId).listen((records) {
      semenRecords.value = records;
      _updateTrends();
    });

    repository.watchHormones(userId).listen((records) {
      hormoneRecords.value = records;
    });

    repository.watchReproductiveLifestyles(userId).listen((records) {
      lifestyleRecords.value = records;
      _updateTrends();
    });
  }

  void _updateTrends() {
    trendObservations.value = trendEngine.analyzeLifestyleAndSemenParameters(
      semenRecords,
      lifestyleRecords,
    );
  }

  Future<void> saveSemenAnalysis() async {
    final userId = authController.currentUserId.value;
    if (userId.isEmpty) return;

    final vol = double.tryParse(volumeController.text.trim());
    final conc = double.tryParse(concentrationController.text.trim());
    final prog = double.tryParse(progressiveMotilityController.text.trim());
    final nonProg = double.tryParse(nonProgressiveMotilityController.text.trim());
    final immotile = double.tryParse(immotileController.text.trim());
    final morph = double.tryParse(morphologyController.text.trim());
    final vit = double.tryParse(vitalityController.text.trim());
    final ph = double.tryParse(phController.text.trim());

    final record = SemenAnalysisTableCompanion(
      id: drift.Value(const Uuid().v4()),
      userId: drift.Value(userId),
      collectionDate: drift.Value(collectionDate.value),
      analysisDate: drift.Value(analysisDate.value),
      volumeMl: drift.Value(vol),
      concentrationMPerMl: drift.Value(conc),
      totalCountM: drift.Value(CalculationService.calculateTotalSpermCount(conc, vol)),
      progressiveMotilityPct: drift.Value(prog),
      nonProgressiveMotilityPct: drift.Value(nonProg),
      immotilePct: drift.Value(immotile),
      totalMotilityPct: drift.Value(CalculationService.calculateTotalMotility(prog, nonProg)),
      morphologyPct: drift.Value(morph),
      vitalityPct: drift.Value(vit),
      ph: drift.Value(ph),
      labName: drift.Value(labNameController.text.trim()),
      notes: drift.Value(notesController.text.trim()),
    );

    await repository.addSemenAnalysis(record);
    _clearSemenForm();
    Get.back();
    Get.snackbar("Success", "Laboratory semen analysis recorded successfully.", backgroundColor: Colors.green, colorText: Colors.white);
  }

  Future<void> saveHormoneResult() async {
    final userId = authController.currentUserId.value;
    if (userId.isEmpty) return;

    final name = hormoneTestNameController.text.trim();
    final resultVal = double.tryParse(hormoneResultController.text.trim());
    if (name.isEmpty || resultVal == null) {
      Get.snackbar("Error", "Please enter test name and valid numeric result value.");
      return;
    }

    final record = HormonesTableCompanion(
      id: drift.Value(const Uuid().v4()),
      userId: drift.Value(userId),
      testName: drift.Value(name),
      resultValue: drift.Value(resultVal),
      unit: drift.Value(hormoneUnitController.text.trim()),
      refRangeLow: drift.Value(double.tryParse(hormoneRefLowController.text.trim())),
      refRangeHigh: drift.Value(double.tryParse(hormoneRefHighController.text.trim())),
      collectionDate: drift.Value(DateTime.now()),
      labName: drift.Value(hormoneLabController.text.trim()),
    );

    await repository.addHormone(record);
    _clearHormoneForm();
    Get.back();
    Get.snackbar("Success", "Hormone result recorded successfully.", backgroundColor: Colors.purple, colorText: Colors.white);
  }

  void _clearSemenForm() {
    volumeController.clear();
    concentrationController.clear();
    progressiveMotilityController.clear();
    nonProgressiveMotilityController.clear();
    immotileController.clear();
    morphologyController.clear();
    vitalityController.clear();
    phController.clear();
    labNameController.clear();
    notesController.clear();
  }

  void _clearHormoneForm() {
    hormoneTestNameController.clear();
    hormoneResultController.clear();
    hormoneRefLowController.clear();
    hormoneRefHighController.clear();
    hormoneLabController.clear();
  }
}
