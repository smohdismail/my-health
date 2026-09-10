import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class BiometricResult {
  final bool success;
  final String message;

  BiometricResult(this.success, this.message);
}

class BiometricService {
  final LocalAuthentication _auth = LocalAuthentication();

  Future<bool> isBiometricsAvailable() async {
    try {
      final bool canCheck = await _auth.canCheckBiometrics;
      final bool isSupported = await _auth.isDeviceSupported();
      return canCheck || isSupported;
    } catch (_) {
      return false;
    }
  }

  Future<BiometricResult> authenticateDetailed({required String localizedReason}) async {
    try {
      final isAvailable = await isBiometricsAvailable();
      if (!isAvailable) {
        return BiometricResult(false, "Biometrics hardware or device security is not set up on this device.");
      }

      final bool didAuthenticate = await _auth.authenticate(
        localizedReason: localizedReason,
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: false, // Allows device PIN/Pattern as security fallback if fingerprint isn't enrolled
        ),
      );

      if (didAuthenticate) {
        return BiometricResult(true, "Authentication successful.");
      } else {
        return BiometricResult(false, "Authentication canceled or failed.");
      }
    } on PlatformException catch (e) {
      return BiometricResult(false, e.message ?? "Biometric authentication platform error.");
    } catch (e) {
      return BiometricResult(false, e.toString());
    }
  }
}
