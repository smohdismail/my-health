import 'package:get/get.dart';
import '../modules/auth/login_view.dart';
import '../modules/auth/register_view.dart';
import '../modules/dashboard/dashboard_view.dart';
import '../modules/vitals/vitals_view.dart';
import '../modules/reproductive/reproductive_view.dart';
import '../modules/timeline/timeline_view.dart';
import '../modules/reports/reports_view.dart';
import '../modules/ai_assistant/ai_assistant_view.dart';
import '../modules/settings/settings_view.dart';
import '../modules/profile/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterView(),
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => const DashboardView(),
    ),
    GetPage(
      name: Routes.VITALS,
      page: () => const VitalsView(),
    ),
    GetPage(
      name: Routes.REPRODUCTIVE,
      page: () => const ReproductiveView(),
    ),
    GetPage(
      name: Routes.TIMELINE,
      page: () => const TimelineView(),
    ),
    GetPage(
      name: Routes.REPORTS,
      page: () => const ReportsView(),
    ),
    GetPage(
      name: Routes.AI_ASSISTANT,
      page: () => const AIAssistantView(),
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => const SettingsView(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => const ProfileView(),
    ),
  ];
}
