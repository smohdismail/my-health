import 'package:health/health.dart';

class HealthConnectResult {
  final bool isSuccess;
  final String message;
  final int recordCount;

  HealthConnectResult({required this.isSuccess, required this.message, this.recordCount = 0});
}

class HealthConnectDataPoint {
  final String type;
  final double value;
  final String unit;
  final DateTime timestamp;
  final String source;
  final String? sourceId;

  HealthConnectDataPoint({
    required this.type,
    required this.value,
    required this.unit,
    required this.timestamp,
    this.source = 'Health Connect',
    this.sourceId,
  });
}

class HealthConnectService {
  final Health _health = Health();

  static const List<HealthDataType> _types = [
    HealthDataType.STEPS,
    HealthDataType.HEART_RATE,
    HealthDataType.WEIGHT,
    HealthDataType.SLEEP_ASLEEP,
    HealthDataType.BLOOD_PRESSURE_SYSTOLIC,
    HealthDataType.BLOOD_PRESSURE_DIASTOLIC,
    HealthDataType.BLOOD_GLUCOSE,
    HealthDataType.BLOOD_OXYGEN,
  ];

  Future<bool> isHealthConnectAvailable() async {
    try {
      final hasPerms = await _health.hasPermissions(_types);
      return hasPerms ?? false;
    } catch (_) {
      return false;
    }
  }

  Future<HealthConnectResult> requestPermissionsDetailed() async {
    try {
      final isAuthorized = await _health.requestAuthorization(_types);
      if (isAuthorized) {
        return HealthConnectResult(
          isSuccess: true,
          message: "Health Connect permissions granted successfully.",
        );
      } else {
        return HealthConnectResult(
          isSuccess: false,
          message: "Health Connect permissions were denied. Ensure Health Connect APK is installed from Play Store.",
        );
      }
    } catch (e) {
      return HealthConnectResult(
        isSuccess: false,
        message: "Health Connect error: ${e.toString()}",
      );
    }
  }

  Future<List<HealthConnectDataPoint>> fetchHealthData({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final List<HealthConnectDataPoint> points = [];
    try {
      final List<HealthDataPoint> data = await _health.getHealthDataFromTypes(
        types: _types,
        startTime: startDate,
        endTime: endDate,
      );

      for (var p in data) {
        final double val = (p.value as NumericHealthValue).numericValue.toDouble();
        points.add(HealthConnectDataPoint(
          type: p.type.name.toLowerCase(),
          value: val,
          unit: p.unit.name,
          timestamp: p.dateFrom,
          source: 'Health Connect',
          sourceId: p.uuid,
        ));
      }
    } catch (_) {}
    return points;
  }
}
