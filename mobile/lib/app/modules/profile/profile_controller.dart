import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/repositories/database_repository.dart';
import '../../data/local/app_database.dart';
import '../auth/auth_controller.dart';
import 'package:drift/drift.dart' as drift;

class ProfileController extends GetxController {
  final DatabaseRepository repository;
  final AuthController authController;

  final nameController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final healthGoalController = TextEditingController();

  final RxString biologicalSex = 'male'.obs;
  final RxString activityLevel = 'moderate'.obs;
  final RxString preferredUnits = 'metric'.obs;
  final Rx<DateTime?> dateOfBirth = Rx<DateTime?>(null);

  final RxBool isLoading = false.obs;

  ProfileController({required this.repository, required this.authController});

  @override
  void onInit() {
    super.onInit();
    loadProfile();
  }

  void loadProfile() async {
    final userId = authController.currentUserId.value;
    if (userId.isEmpty) return;

    final user = await repository.getUser(userId);
    if (user != null) {
      nameController.text = user.name ?? '';
      biologicalSex.value = user.biologicalSex;
      heightController.text = user.heightCm != null ? user.heightCm.toString() : '';
      weightController.text = user.weightKg != null ? user.weightKg.toString() : '';
      activityLevel.value = user.activityLevel;
      preferredUnits.value = user.preferredUnits;
      dateOfBirth.value = user.dateOfBirth;
    }
  }

  Future<void> saveProfile() async {
    final userId = authController.currentUserId.value;
    if (userId.isEmpty) return;

    isLoading.value = true;
    try {
      final user = await repository.getUser(userId);

      await repository.upsertUser(UsersTableCompanion(
        id: drift.Value(userId),
        email: drift.Value(user?.email ?? authController.emailController.text.trim()),
        name: drift.Value(nameController.text.trim()),
        biologicalSex: drift.Value(biologicalSex.value),
        dateOfBirth: drift.Value(dateOfBirth.value),
        heightCm: drift.Value(double.tryParse(heightController.text.trim())),
        weightKg: drift.Value(double.tryParse(weightController.text.trim())),
        activityLevel: drift.Value(activityLevel.value),
        preferredUnits: drift.Value(preferredUnits.value),
      ));

      Get.snackbar("Profile Saved", "Your health profile has been updated.", backgroundColor: Colors.teal, colorText: Colors.white);
    } finally {
      isLoading.value = false;
    }
  }
}
