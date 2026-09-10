import 'dart:async';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';

class PedometerService {
  StreamSubscription<StepCount>? _stepCountSubscription;
  final StreamController<int> _stepController = StreamController<int>.broadcast();

  Stream<int> get stepStream => _stepController.stream;

  Future<bool> requestActivityPermission() async {
    final status = await Permission.activityRecognition.request();
    return status.isGranted;
  }

  Future<void> startStepListening({required Function(int steps) onStepCount}) async {
    final isGranted = await requestActivityPermission();
    if (!isGranted) return;

    try {
      _stepCountSubscription = Pedometer.stepCountStream.listen(
        (StepCount event) {
          onStepCount(event.steps);
          _stepController.add(event.steps);
        },
        onError: (error) {
          // Pedometer sensor unavailable on this device
        },
      );
    } catch (_) {}
  }

  void stopListening() {
    _stepCountSubscription?.cancel();
  }
}
