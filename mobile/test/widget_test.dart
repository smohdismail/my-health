import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mobile/app/data/local/app_database.dart';
import 'package:mobile/app/data/providers/api_client.dart';
import 'package:mobile/app/data/providers/biometric_service.dart';
import 'package:mobile/app/data/providers/storage_service.dart';
import 'package:mobile/app/data/repositories/database_repository.dart';
import 'package:mobile/app/modules/auth/auth_controller.dart';
import 'package:mobile/app/modules/main_nav_controller.dart';
import 'package:mobile/main.dart';

void main() {
  testWidgets('MyHealthApp widget smoke test', (WidgetTester tester) async {
    final storageService = StorageService();
    final apiClient = ApiClient(storageService: storageService);
    final biometricService = BiometricService();
    final db = AppDatabase();
    final repository = DatabaseRepository(db: db);

    Get.put(storageService);
    Get.put(apiClient);
    Get.put(biometricService);
    Get.put(repository);

    Get.put(AuthController(
      storageService: storageService,
      apiClient: apiClient,
      biometricService: biometricService,
      repository: repository,
    ));

    Get.put(MainNavController());

    await tester.pumpWidget(const MyHealthApp());
    expect(find.byType(MyHealthApp), findsOneWidget);
  });
}
