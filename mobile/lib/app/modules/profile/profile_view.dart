import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Profile & Health Parameters")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 44,
                    backgroundColor: Colors.teal.shade100,
                    child: Icon(Icons.person_rounded, size: 54, color: Colors.teal.shade800),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text("Personal Information", style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold, color: Colors.teal.shade900)),
            const SizedBox(height: 12),
            TextField(
              controller: controller.nameController,
              decoration: const InputDecoration(labelText: "Full Name", prefixIcon: Icon(Icons.person_outline), border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16),
            Obx(() => DropdownButtonFormField<String>(
                  value: controller.biologicalSex.value,
                  decoration: const InputDecoration(labelText: "Biological Sex (For physiological baselines)", prefixIcon: Icon(Icons.wc), border: OutlineInputBorder()),
                  items: const [
                    DropdownMenuItem(value: 'male', child: Text('Male')),
                    DropdownMenuItem(value: 'female', child: Text('Female')),
                    DropdownMenuItem(value: 'other', child: Text('Other / Prefer not to say')),
                  ],
                  onChanged: (val) {
                    if (val != null) controller.biologicalSex.value = val;
                  },
                )),
            const SizedBox(height: 20),
            Text("Body Baselines & Units", style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold, color: Colors.teal.shade900)),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller.heightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Height (cm)", prefixIcon: Icon(Icons.height), border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: controller.weightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Weight (kg)", prefixIcon: Icon(Icons.monitor_weight_outlined), border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Obx(() => DropdownButtonFormField<String>(
                  value: controller.activityLevel.value,
                  decoration: const InputDecoration(labelText: "Activity Level", prefixIcon: Icon(Icons.directions_run), border: OutlineInputBorder()),
                  items: const [
                    DropdownMenuItem(value: 'sedentary', child: Text('Sedentary (Little or no exercise)')),
                    DropdownMenuItem(value: 'lightly_active', child: Text('Lightly Active (1-3 days/week)')),
                    DropdownMenuItem(value: 'moderate', child: Text('Moderately Active (3-5 days/week)')),
                    DropdownMenuItem(value: 'very_active', child: Text('Very Active (6-7 days/week)')),
                  ],
                  onChanged: (val) {
                    if (val != null) controller.activityLevel.value = val;
                  },
                )),
            const SizedBox(height: 16),
            Obx(() => DropdownButtonFormField<String>(
                  value: controller.preferredUnits.value,
                  decoration: const InputDecoration(labelText: "Preferred Units", prefixIcon: Icon(Icons.straighten), border: OutlineInputBorder()),
                  items: const [
                    DropdownMenuItem(value: 'metric', child: Text('Metric (kg, cm, °C)')),
                    DropdownMenuItem(value: 'imperial', child: Text('Imperial (lbs, inches, °F)')),
                  ],
                  onChanged: (val) {
                    if (val != null) controller.preferredUnits.value = val;
                  },
                )),
            const SizedBox(height: 32),
            Obx(() => controller.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: controller.saveProfile,
                      icon: const Icon(Icons.save_rounded),
                      label: const Text("Save Profile Updates", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.teal.shade800, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 16)),
                    ),
                  )),
          ],
        ),
      ),
    );
  }
}
