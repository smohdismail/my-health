import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'reports_controller.dart';

class ReportsView extends GetView<ReportsController> {
  const ReportsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Export Health Report")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => SwitchListTile(
                  title: const Text("Concise Doctor Report Mode", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: const Text("Prioritizes lab parameters, reference ranges, vitals, and dates."),
                  value: controller.isDoctorMode.value,
                  onChanged: (val) => controller.isDoctorMode.value = val,
                )),
            const Divider(),
            const SizedBox(height: 8),
            Text("Select Report Content Sections", style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _buildSectionCheckbox('profile', 'Patient Profile Summary'),
            _buildSectionCheckbox('semen_analysis', 'Semen Analysis History'),
            _buildSectionCheckbox('hormones', 'Hormone Laboratory Results'),
            _buildSectionCheckbox('vitals', 'Vitals & Measurements Log'),
            _buildSectionCheckbox('medications', 'Active Medications'),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.amber.shade50, borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.amber.shade400)),
              child: Row(
                children: [
                  Icon(Icons.gavel_rounded, color: Colors.amber.shade900),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Medical Disclaimer: Generated PDF reports are summaries of user-logged data. They are not medical diagnoses.",
                      style: TextStyle(fontSize: 11, color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Obx(() => controller.isGenerating.value
                ? const Center(child: CircularProgressIndicator())
                : SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: controller.exportPdf,
                      icon: const Icon(Icons.picture_as_pdf_rounded),
                      label: const Text("Generate & Export PDF", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.teal.shade800, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 16)),
                    ),
                  )),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCheckbox(String key, String title) {
    return Obx(() => CheckboxListTile(
          title: Text(title),
          value: controller.selectedSections.contains(key),
          onChanged: (_) => controller.toggleSection(key),
        ));
  }
}
