import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings & Privacy")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text("Integrations & Data Sources", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.teal)),
          Obx(() => ListTile(
                leading: const Icon(Icons.favorite_rounded, color: Colors.teal),
                title: const Text("Android Health Connect"),
                subtitle: Text(controller.isHealthConnectConnected.value ? "Connected — Reading activity & vitals" : "Disconnected"),
                trailing: ElevatedButton(
                  onPressed: controller.connectHealthConnect,
                  child: Text(controller.isHealthConnectConnected.value ? "Re-sync" : "Connect"),
                ),
              )),
          const Divider(),
          const Text("App Security & Privacy", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.teal)),
          Obx(() => SwitchListTile(
                secondary: const Icon(Icons.fingerprint_rounded, color: Colors.teal),
                title: const Text("Biometric App Unlock"),
                subtitle: const Text("Require Fingerprint/Face ID to open app"),
                value: controller.isBiometricEnabled.value,
                onChanged: controller.toggleBiometrics,
              )),
          Obx(() => SwitchListTile(
                secondary: const Icon(Icons.security_rounded, color: Colors.teal),
                title: const Text("AI Data Minimization"),
                subtitle: const Text("Strip identifiers before AI analysis"),
                value: controller.isAiMinimizationEnabled.value,
                onChanged: (val) => controller.isAiMinimizationEnabled.value = val,
              )),
          const Divider(),
          const Text("Account & Data Management", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.red)),
          ListTile(
            leading: const Icon(Icons.logout_rounded, color: Colors.orange),
            title: const Text("Sign Out"),
            onTap: controller.authController.logout,
          ),
          ListTile(
            leading: const Icon(Icons.delete_forever_rounded, color: Colors.red),
            title: const Text("Delete Account & Erase All Records", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            subtitle: const Text("Permanently erases all local and synced health measurements."),
            onTap: () => _confirmDeletion(context),
          ),
        ],
      ),
    );
  }

  void _confirmDeletion(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Confirm Account & Data Deletion"),
        content: const Text("Are you sure you want to permanently erase all your health measurements, semen analysis records, and local data? This action cannot be undone."),
        actions: [
          TextButton(onPressed: () => Get.back(), child: const Text("Cancel")),
          ElevatedButton(
            onPressed: () {
              Get.back();
              controller.deleteUserData();
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
            child: const Text("Permanently Delete"),
          ),
        ],
      ),
    );
  }
}
