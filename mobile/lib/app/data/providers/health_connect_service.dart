import 'package:health/health.dart';

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
      return await _health.hasPermissions(_types) ?? false;
    } catch (_) {
      return false;
    }
  }

  Future<bool> requestPermissions() async {
    try {
      return await _health.requestAuthorization(_types);
    } catch (_) {
      return false;
    }
  }

  Future<List<HealthConnectDataPoint>> fetchHealthData({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final List<HealthConnectDataPoint> points = [];
    try {
      final hasPermission = await _health.hasPermissions(_types) ?? false;
      if (!hasPermission) return points;

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
