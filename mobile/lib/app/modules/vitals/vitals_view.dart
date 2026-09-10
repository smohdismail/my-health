import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'vitals_controller.dart';

class VitalsView extends GetView<VitalsController> {
  const VitalsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Log Vitals & Measurements")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader("Weight & Body Metrics"),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller.weightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Weight (kg)", border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(onPressed: controller.saveWeight, child: const Text("Log")),
              ],
            ),
            const SizedBox(height: 16),
            _buildSectionHeader("Heart Rate"),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller.heartRateController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Heart Rate (BPM)", border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(onPressed: controller.saveHeartRate, child: const Text("Log")),
              ],
            ),
            const SizedBox(height: 16),
            _buildSectionHeader("Blood Pressure"),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller.sysController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Systolic (mmHg)", border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: controller.diaController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Diastolic (mmHg)", border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(onPressed: controller.saveBloodPressure, child: const Text("Log")),
              ],
            ),
            const SizedBox(height: 16),
            _buildSectionHeader("Hydration Quick-Add"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton.icon(onPressed: () => controller.saveWaterQuickAdd(250), icon: const Icon(Icons.local_drink), label: const Text("+250 mL")),
                OutlinedButton.icon(onPressed: () => controller.saveWaterQuickAdd(500), icon: const Icon(Icons.local_drink), label: const Text("+500 mL")),
                OutlinedButton.icon(onPressed: () => controller.saveWaterQuickAdd(750), icon: const Icon(Icons.local_drink), label: const Text("+750 mL")),
              ],
            ),
            const SizedBox(height: 24),
            Text("Recent Vitals Log", style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Obx(() {
              final list = controller.measurements;
              if (list.isEmpty) return const Text("No vitals logged yet.");
              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: list.take(10).length,
                itemBuilder: (context, index) {
                  final item = list[index];
                  return ListTile(
                    leading: const Icon(Icons.show_chart_rounded, color: Colors.teal),
                    title: Text("${item.type.replaceAll('_', ' ').toUpperCase()}: ${item.value} ${item.unit}"),
                    subtitle: Text("${item.timestamp.toString().split('.')[0]} — Source: ${item.source}"),
                  );
                },
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.teal.shade900),
      ),
    );
  }
}
