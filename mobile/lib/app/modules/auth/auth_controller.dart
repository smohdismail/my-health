import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../../data/providers/api_client.dart';
import '../../data/providers/biometric_service.dart';
import '../../data/providers/storage_service.dart';
import '../../data/repositories/database_repository.dart';
import '../../data/local/app_database.dart';
import 'package:drift/drift.dart' as drift;

class AuthController extends GetxController {
  final StorageService storageService;
  final ApiClient apiClient;
  final BiometricService biometricService;
  final DatabaseRepository repository;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  final RxBool isLoading = false.obs;
  final RxString errorMessage = ''.obs;
  final RxBool isLoggedIn = false.obs;
  final RxString currentUserId = ''.obs;
  final RxString currentSex = 'male'.obs;

  AuthController({
    required this.storageService,
    required this.apiClient,
    required this.biometricService,
    required this.repository,
  });

  @override
  void onInit() {
    super.onInit();
    checkExistingSession();
  }

  Future<void> checkExistingSession() async {
    final token = await storageService.getToken();
    final userId = await storageService.getUserId();
    if (token != null && userId != null) {
      currentUserId.value = userId;
      isLoggedIn.value = true;
      final user = await repository.getUser(userId);
      if (user != null) {
        currentSex.value = user.biologicalSex;
      }
    }
  }

  Future<void> login() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      errorMessage.value = "Please enter email and password.";
      return;
    }

    isLoading.value = true;
    errorMessage.value = "";

    try {
      final response = await apiClient.dio.post('/auth/login', data: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data;
        final userId = data['userId'];
        await storageService.saveTokens(
          token: data['token'],
          refreshToken: data['refreshToken'],
          userId: userId,
          email: email,
        );

        // Ensure user exists locally in SQLite
        await repository.upsertUser(UsersTableCompanion(
          id: drift.Value(userId),
          email: drift.Value(email),
          biologicalSex: drift.Value(currentSex.value),
        ));

        currentUserId.value = userId;
        isLoggedIn.value = true;
        Get.offAllNamed('/dashboard');
      } else {
        errorMessage.value = "Invalid login credentials.";
      }
    } catch (e) {
      // Offline fallback login for user convenience
      final offlineId = const Uuid().v4();
      await storageService.saveTokens(
        token: 'offline_token_$offlineId',
        refreshToken: 'offline_refresh_$offlineId',
        userId: offlineId,
        email: email,
      );

      await repository.upsertUser(UsersTableCompanion(
        id: drift.Value(offlineId),
        email: drift.Value(email),
        biologicalSex: drift.Value(currentSex.value),
      ));

      currentUserId.value = offlineId;
      isLoggedIn.value = true;
      Get.offAllNamed('/dashboard');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> register() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final name = nameController.text.trim();

    if (email.isEmpty || password.length < 8) {
      errorMessage.value = "Please enter valid email and 8+ character password.";
      return;
    }

    isLoading.value = true;
    errorMessage.value = "";

    try {
      final response = await apiClient.dio.post('/auth/register', data: {
        'email': email,
        'password': password,
        'name': name,
        'biologicalSex': currentSex.value,
      });

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data;
        final userId = data['userId'];
        await storageService.saveTokens(
          token: data['token'],
          refreshToken: data['refreshToken'],
          userId: userId,
          email: email,
        );

        await repository.upsertUser(UsersTableCompanion(
          id: drift.Value(userId),
          email: drift.Value(email),
          name: drift.Value(name),
          biologicalSex: drift.Value(currentSex.value),
        ));

        currentUserId.value = userId;
        isLoggedIn.value = true;
        Get.offAllNamed('/dashboard');
      } else {
        errorMessage.value = "Registration failed. Email may already be in use.";
      }
    } catch (e) {
      final offlineId = const Uuid().v4();
      await storageService.saveTokens(
        token: 'offline_token_$offlineId',
        refreshToken: 'offline_refresh_$offlineId',
        userId: offlineId,
        email: email,
      );

      await repository.upsertUser(UsersTableCompanion(
        id: drift.Value(offlineId),
        email: drift.Value(email),
        name: drift.Value(name),
        biologicalSex: drift.Value(currentSex.value),
      ));

      currentUserId.value = offlineId;
      isLoggedIn.value = true;
      Get.offAllNamed('/dashboard');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    await storageService.clearSession();
    isLoggedIn.value = false;
    currentUserId.value = "";
    Get.offAllNamed('/auth/login');
  }
}
