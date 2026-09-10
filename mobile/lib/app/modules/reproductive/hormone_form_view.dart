import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'reproductive_controller.dart';

class HormoneFormView extends GetView<ReproductiveController> {
  const HormoneFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Record Hormone Result")),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: controller.hormoneTestNameController,
                decoration: const InputDecoration(labelText: "Test Name (e.g. Total Testosterone, FSH, LH)", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller.hormoneResultController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Result Value", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller.hormoneUnitController,
                decoration: const InputDecoration(labelText: "Unit (e.g. ng/dL, mIU/mL)", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller.hormoneRefLowController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(labelText: "Lab Ref Low", border: OutlineInputBorder()),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      controller: controller.hormoneRefHighController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(labelText: "Lab Ref High", border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller.hormoneLabController,
                decoration: const InputDecoration(labelText: "Laboratory Name", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: controller.saveHormoneResult,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade700, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 16)),
                child: const Text("Save Hormone Result", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
