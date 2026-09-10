import 'package:dio/dio.dart';
import 'storage_service.dart';

class ApiClient {
  final Dio dio;
  final StorageService storageService;

  // Change this to your deployed Render URL once live (e.g., 'https://my-health-api.onrender.com/api/v1')
  static const String defaultBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://10.0.2.2:5000/api/v1',
  );

  ApiClient({required this.storageService, String? baseUrlOverride, Dio? dioOverride})
      : dio = dioOverride ?? Dio(BaseOptions(
          baseUrl: baseUrlOverride ?? defaultBaseUrl,
          connectTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 15),
          headers: {'Content-Type': 'application/json'},
        )) {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await storageService.getToken();
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
        onError: (DioException error, handler) async {
          if (error.response?.statusCode == 401) {
            final refreshed = await _tryRefreshToken();
            if (refreshed) {
              final token = await storageService.getToken();
              error.requestOptions.headers['Authorization'] = 'Bearer $token';
              try {
                final response = await dio.fetch(error.requestOptions);
                return handler.resolve(response);
              } catch (e) {
                return handler.next(error);
              }
            } else {
              await storageService.clearSession();
            }
          }
          return handler.next(error);
        },
      ),
    );
  }

  Future<bool> _tryRefreshToken() async {
    try {
      final refreshToken = await storageService.getRefreshToken();
      final userId = await storageService.getUserId();
      if (refreshToken == null || userId == null) return false;

      final response = await Dio().post(
        '${dio.options.baseUrl}/auth/refresh',
        data: {'userId': userId, 'refreshToken': refreshToken},
      );

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data;
        await storageService.saveTokens(
          token: data['token'],
          refreshToken: data['refreshToken'],
          userId: userId,
          email: data['email'] ?? '',
        );
        return true;
      }
    } catch (_) {}
    return false;
  }
}
