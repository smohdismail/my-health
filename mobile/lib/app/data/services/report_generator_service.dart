import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import '../local/app_database.dart';
import 'calculation_service.dart';

class ReportGeneratorService {
  static const String disclaimerText =
      "DISCLAIMER: This report is a record and summary of user-provided or connected health information. "
      "It is NOT a medical diagnosis or treatment plan. Discuss all health readings and laboratory results "
      "with a qualified healthcare professional.";

  Future<Uint8List> generateHealthReport({
    required UsersTableData user,
    required List<HealthMeasurementsTableData> measurements,
    required List<SemenAnalysisTableData> semenAnalysis,
    required List<HormonesTableData> hormones,
    required List<MedicationsTableData> medications,
    required DateTime startDate,
    required DateTime endDate,
    required bool isDoctorReportMode,
    required List<String> selectedSections,
  }) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(32),
        header: (context) => _buildHeader(user, startDate, endDate, isDoctorReportMode),
        footer: (context) => _buildFooter(context),
        build: (context) => [
          _buildDisclaimerCard(),
          pw.SizedBox(height: 16),
          if (selectedSections.contains('profile')) _buildProfileSection(user),
          if (selectedSections.contains('semen_analysis') && semenAnalysis.isNotEmpty) ...[
            pw.SizedBox(height: 16),
            _buildSemenAnalysisSection(semenAnalysis, isDoctorReportMode),
          ],
          if (selectedSections.contains('hormones') && hormones.isNotEmpty) ...[
            pw.SizedBox(height: 16),
            _buildHormonesSection(hormones),
          ],
          if (selectedSections.contains('vitals') && measurements.isNotEmpty) ...[
            pw.SizedBox(height: 16),
            _buildVitalsSection(measurements),
          ],
          if (selectedSections.contains('medications') && medications.isNotEmpty) ...[
            pw.SizedBox(height: 16),
            _buildMedicationsSection(medications),
          ],
        ],
      ),
    );

    return pdf.save();
  }

  pw.Widget _buildHeader(UsersTableData user, DateTime start, DateTime end, bool isDoctorMode) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text(
              isDoctorMode ? "CONCISE DOCTOR HEALTH REPORT" : "PERSONAL HEALTH REPORT",
              style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold, color: PdfColors.blue900),
            ),
            pw.Text(
              "Date: ${DateTime.now().toString().split(' ')[0]}",
              style: const pw.TextStyle(fontSize: 10, color: PdfColors.grey700),
            ),
          ],
        ),
        pw.Text(
          "Patient/User: ${user.name ?? user.email} | Range: ${start.toString().split(' ')[0]} to ${end.toString().split(' ')[0]}",
          style: const pw.TextStyle(fontSize: 11, color: PdfColors.grey800),
        ),
        pw.Divider(thickness: 1, color: PdfColors.grey400),
        pw.SizedBox(height: 8),
      ],
    );
  }

  pw.Widget _buildFooter(pw.Context context) {
    return pw.Column(
      children: [
        pw.Divider(thickness: 0.5, color: PdfColors.grey400),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text("MyHealth Hub — Confidential Personal Health Record", style: const pw.TextStyle(fontSize: 9, color: PdfColors.grey600)),
            pw.Text("Page ${context.pageNumber} of ${context.pagesCount}", style: const pw.TextStyle(fontSize: 9, color: PdfColors.grey600)),
          ],
        ),
      ],
    );
  }

  pw.Widget _buildDisclaimerCard() {
    return pw.Container(
      padding: const pw.EdgeInsets.all(10),
      decoration: pw.BoxDecoration(
        color: PdfColors.amber50,
        border: pw.Border.all(color: PdfColors.amber600, width: 1),
        borderRadius: const pw.BorderRadius.all(pw.Radius.circular(4)),
      ),
      child: pw.Text(
        disclaimerText,
        style: pw.TextStyle(fontSize: 9, color: PdfColors.amber900, fontWeight: pw.FontWeight.bold),
      ),
    );
  }

  pw.Widget _buildProfileSection(UsersTableData user) {
    final bmi = user.weightKg != null && user.heightCm != null ? CalculationService.calculateBmi(user.weightKg!, user.heightCm!) : null;
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text("Patient Profile Summary", style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
        pw.SizedBox(height: 6),
        pw.TableHelper.fromTextArray(
          headers: ['Biological Sex', 'Height', 'Weight', 'BMI', 'Units Preferred'],
          data: [
            [
              user.biologicalSex.toUpperCase(),
              user.heightCm != null ? "${user.heightCm} cm" : "-",
              user.weightKg != null ? "${user.weightKg} kg" : "-",
              bmi != null ? "$bmi (${CalculationService.getBmiCategory(bmi)})" : "-",
              user.preferredUnits.toUpperCase(),
            ]
          ],
          headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 10),
          cellStyle: const pw.TextStyle(fontSize: 10),
        ),
      ],
    );
  }

  pw.Widget _buildSemenAnalysisSection(List<SemenAnalysisTableData> records, bool isDoctorMode) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text("Semen Analysis History", style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold, color: PdfColors.blue800)),
        pw.SizedBox(height: 6),
        pw.TableHelper.fromTextArray(
          headers: ['Collection Date', 'Vol (mL)', 'Conc (M/mL)', 'Total Count (M)', 'Prog Motility %', 'Total Motility %', 'Morph %', 'Lab Name'],
          data: records.map((r) {
            final totalCount = CalculationService.calculateTotalSpermCount(r.concentrationMPerMl, r.volumeMl);
            final totalMotility = CalculationService.calculateTotalMotility(r.progressiveMotilityPct, r.nonProgressiveMotilityPct);
            return [
              r.collectionDate.toString().split(' ')[0],
              r.volumeMl?.toStringAsFixed(1) ?? '-',
              r.concentrationMPerMl?.toStringAsFixed(1) ?? '-',
              totalCount?.toStringAsFixed(1) ?? '-',
              r.progressiveMotilityPct != null ? "${r.progressiveMotilityPct}%" : '-',
              totalMotility != null ? "$totalMotility%" : '-',
              r.morphologyPct != null ? "${r.morphologyPct}%" : '-',
              r.labName ?? 'Self-entered',
            ];
          }).toList(),
          headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 9),
          cellStyle: const pw.TextStyle(fontSize: 9),
        ),
      ],
    );
  }

  pw.Widget _buildHormonesSection(List<HormonesTableData> records) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text("Hormone Laboratory Results", style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold, color: PdfColors.purple800)),
        pw.SizedBox(height: 6),
        pw.TableHelper.fromTextArray(
          headers: ['Date', 'Test Name', 'Result', 'Unit', 'Lab Reference Range', 'Lab Name'],
          data: records.map((h) {
            final refStr = (h.refRangeLow != null && h.refRangeHigh != null) ? "${h.refRangeLow} - ${h.refRangeHigh} ${h.unit}" : 'Not specified';
            return [
              h.collectionDate.toString().split(' ')[0],
              h.testName,
              h.resultValue.toStringAsFixed(2),
              h.unit,
              refStr,
              h.labName ?? '-',
            ];
          }).toList(),
          headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 9),
          cellStyle: const pw.TextStyle(fontSize: 9),
        ),
      ],
    );
  }

  pw.Widget _buildVitalsSection(List<HealthMeasurementsTableData> records) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text("Vitals & Health Measurements Summary", style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
        pw.SizedBox(height: 6),
        pw.TableHelper.fromTextArray(
          headers: ['Timestamp', 'Type', 'Value', 'Unit', 'Source'],
          data: records.take(15).map((m) {
            return [
              m.timestamp.toString().split('.')[0],
              m.type.replaceAll('_', ' ').toUpperCase(),
              m.value.toStringAsFixed(1),
              m.unit,
              m.source,
            ];
          }).toList(),
          headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 9),
          cellStyle: const pw.TextStyle(fontSize: 9),
        ),
      ],
    );
  }

  pw.Widget _buildMedicationsSection(List<MedicationsTableData> records) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text("Current Medications", style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
        pw.SizedBox(height: 6),
        pw.TableHelper.fromTextArray(
          headers: ['Medication', 'Dosage', 'Frequency', 'Start Date', 'Instructions'],
          data: records.map((m) {
            return [
              m.name,
              "${m.dosage} ${m.unit}",
              m.frequency,
              m.startDate.toString().split(' ')[0],
              m.instructions ?? '-',
            ];
          }).toList(),
          headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 9),
          cellStyle: const pw.TextStyle(fontSize: 9),
        ),
      ],
    );
  }
}
