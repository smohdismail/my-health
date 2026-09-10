import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'reproductive_controller.dart';

class SemenFormView extends GetView<ReproductiveController> {
  const SemenFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Record Semen Analysis")),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text("Enter values directly from your laboratory report. Original values will be preserved exactly as entered.", style: TextStyle(color: Colors.grey, fontSize: 13)),
              const SizedBox(height: 16),
              TextField(
                controller: controller.volumeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Semen Volume (mL)", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller.concentrationController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Sperm Concentration (M/mL)", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              Obx(() => Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.purple.shade50, borderRadius: BorderRadius.circular(8)),
                    child: Text("Calculated Total Sperm Count: ${controller.calculatedTotalCount.value.toStringAsFixed(1)} Million", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                  )),
              const SizedBox(height: 12),
              TextField(
                controller: controller.progressiveMotilityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Progressive Motility (%)", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller.nonProgressiveMotilityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Non-Progressive Motility (%)", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              Obx(() => Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.purple.shade50, borderRadius: BorderRadius.circular(8)),
                    child: Text("Calculated Total Motility: ${controller.calculatedTotalMotility.value.toStringAsFixed(1)}%", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                  )),
              const SizedBox(height: 12),
              TextField(
                controller: controller.morphologyController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Normal Morphology (%)", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller.vitalityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Vitality (%)", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller.phController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "pH Value", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller.labNameController,
                decoration: const InputDecoration(labelText: "Laboratory / Medical Center Name", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller.notesController,
                maxLines: 2,
                decoration: const InputDecoration(labelText: "Laboratory Notes (Optional)", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: controller.saveSemenAnalysis,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade800, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 16)),
                child: const Text("Save Laboratory Result", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
