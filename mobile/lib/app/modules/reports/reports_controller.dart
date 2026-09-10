import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:printing/printing.dart';
import '../../data/repositories/database_repository.dart';
import '../../data/services/report_generator_service.dart';
import '../auth/auth_controller.dart';

class ReportsController extends GetxController {
  final DatabaseRepository repository;
  final AuthController authController;
  final ReportGeneratorService reportGenerator = ReportGeneratorService();

  final RxBool isDoctorMode = false.obs;
  final RxList<String> selectedSections = <String>[
    'profile',
    'semen_analysis',
    'hormones',
    'vitals',
    'medications'
  ].obs;

  final RxBool isGenerating = false.obs;

  ReportsController({required this.repository, required this.authController});

  void toggleSection(String section) {
    if (selectedSections.contains(section)) {
      selectedSections.remove(section);
    } else {
      selectedSections.add(section);
    }
  }

  Future<Uint8List> generatePdf() async {
    final userId = authController.currentUserId.value;
    final user = await repository.getUser(userId) ??
        await repository.getUser('offline_user');

    final measurements = await repository.getMeasurementsForUser(userId);
    final semen = await repository.getSemenAnalysis(userId);
    final hormones = await repository.getHormones(userId);
    final medications = await repository.getMedications(userId);

    return reportGenerator.generateHealthReport(
      user: user!,
      measurements: measurements,
      semenAnalysis: semen,
      hormones: hormones,
      medications: medications,
      startDate: DateTime.now().subtract(const Duration(days: 90)),
      endDate: DateTime.now(),
      isDoctorReportMode: isDoctorMode.value,
      selectedSections: selectedSections,
    );
  }

  Future<void> exportPdf() async {
    isGenerating.value = true;
    try {
      final pdfBytes = await generatePdf();
      await Printing.layoutPdf(
        onLayout: (format) async => pdfBytes,
        name: isDoctorMode.value ? 'Doctor_Health_Report.pdf' : 'Personal_Health_Report.pdf',
      );
    } finally {
      isGenerating.value = false;
    }
  }
}
