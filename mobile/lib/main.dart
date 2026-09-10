import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/data/local/app_database.dart';
import 'app/data/providers/api_client.dart';
import 'app/data/providers/biometric_service.dart';
import 'app/data/providers/storage_service.dart';
import 'app/data/repositories/database_repository.dart';
import 'app/modules/main_nav_controller.dart';
import 'app/modules/auth/auth_controller.dart';
import 'app/modules/auth/login_view.dart';
import 'app/modules/dashboard/dashboard_controller.dart';
import 'app/modules/dashboard/dashboard_view.dart';
import 'app/modules/vitals/vitals_controller.dart';
import 'app/modules/vitals/vitals_view.dart';
import 'app/modules/reproductive/reproductive_controller.dart';
import 'app/modules/reproductive/reproductive_view.dart';
import 'app/modules/timeline/timeline_controller.dart';
import 'app/modules/timeline/timeline_view.dart';
import 'app/modules/reports/reports_controller.dart';
import 'app/modules/reports/reports_view.dart';
import 'app/modules/ai_assistant/ai_assistant_controller.dart';
import 'app/modules/ai_assistant/ai_assistant_view.dart';
import 'app/modules/settings/settings_controller.dart';
import 'app/modules/settings/settings_view.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final storageService = StorageService();
  final apiClient = ApiClient(storageService: storageService);
  final biometricService = BiometricService();
  final db = AppDatabase();
  final repository = DatabaseRepository(db: db);

  Get.put(storageService);
  Get.put(apiClient);
  Get.put(biometricService);
  Get.put(repository);

  final authController = Get.put(AuthController(
    storageService: storageService,
    apiClient: apiClient,
    biometricService: biometricService,
    repository: repository,
  ));

  Get.put(MainNavController());
  Get.put(DashboardController(repository: repository, authController: authController));
  Get.put(VitalsController(repository: repository, authController: authController));
  Get.put(ReproductiveController(repository: repository, authController: authController));
  Get.put(TimelineController(repository: repository, authController: authController));
  Get.put(ReportsController(repository: repository, authController: authController));
  Get.put(AIAssistantController(repository: repository, authController: authController));
  Get.put(SettingsController(
    storageService: storageService,
    biometricService: biometricService,
    repository: repository,
    authController: authController,
  ));

  runApp(const MyHealthApp());
}

class MyHealthApp extends StatelessWidget {
  const MyHealthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MyHealth Hub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        brightness: Brightness.light,
        cardTheme: CardTheme(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      home: const MainShellView(),
      getPages: AppPages.pages,
    );
  }
}

class MainShellView extends StatelessWidget {
  const MainShellView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nav = Get.find<MainNavController>();
    final auth = Get.find<AuthController>();

    return Obx(() {
      if (!auth.isLoggedIn.value) {
        return const LoginView();
      }

      final pages = [
        const DashboardView(),
        const VitalsView(),
        const ReproductiveView(),
        const TimelineView(),
        const ReportsView(),
        const AIAssistantView(),
        const SettingsView(),
      ];

      return Scaffold(
        body: IndexedStack(
          index: nav.selectedIndex.value,
          children: pages,
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: nav.selectedIndex.value,
          onDestinationSelected: nav.changeTab,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.dashboard_rounded), label: 'Dashboard'),
            NavigationDestination(icon: Icon(Icons.favorite_rounded), label: 'Vitals'),
            NavigationDestination(icon: Icon(Icons.science_rounded), label: 'Reproductive'),
            NavigationDestination(icon: Icon(Icons.timeline_rounded), label: 'Timeline'),
            NavigationDestination(icon: Icon(Icons.picture_as_pdf_rounded), label: 'Reports'),
            NavigationDestination(icon: Icon(Icons.smart_toy_rounded), label: 'AI'),
            NavigationDestination(icon: Icon(Icons.settings_rounded), label: 'Settings'),
          ],
        ),
      );
    });
  }
}
