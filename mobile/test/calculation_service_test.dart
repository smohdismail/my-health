import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/app/data/services/calculation_service.dart';

void main() {
  group('CalculationService Unit Tests', () {
    test('calculateBmi returns correct value and category', () {
      final bmi = CalculationService.calculateBmi(70.0, 175.0);
      expect(bmi, equals(22.9));
      expect(CalculationService.getBmiCategory(bmi), equals('Normal weight'));

      final bmiOver = CalculationService.calculateBmi(90.0, 175.0);
      expect(bmiOver, equals(29.4));
      expect(CalculationService.getBmiCategory(bmiOver), equals('Overweight'));
    });

    test('Unit Conversions perform accurately', () {
      expect(CalculationService.kgToLbs(70.0), equals(154.3));
      expect(CalculationService.lbsToKg(154.3), equals(70.0));
      expect(CalculationService.celsiusToFahrenheit(37.0), equals(98.6));
      expect(CalculationService.fahrenheitToCelsius(98.6), equals(37.0));
    });

    test('Semen Analysis Parameter Calculations', () {
      final totalCount = CalculationService.calculateTotalSpermCount(45.0, 3.5);
      expect(totalCount, equals(157.5));

      final totalMotility = CalculationService.calculateTotalMotility(40.0, 15.0);
      expect(totalMotility, equals(55.0));

      final tpms = CalculationService.calculateTotalProgressiveMotileCount(45.0, 3.5, 40.0);
      expect(tpms, equals(63.0));
    });

    test('Fertile Window Estimation', () {
      final periodStart = DateTime(2026, 9, 1);
      final window = CalculationService.estimateFertileWindow(periodStart, 28);

      expect(window['ovulation'], equals(DateTime(2026, 9, 15)));
      expect(window['fertileStart'], equals(DateTime(2026, 9, 10)));
      expect(window['fertileEnd'], equals(DateTime(2026, 9, 16)));
    });

    test('Wellness Score Calculation', () {
      final score = CalculationService.calculateWellnessScore(
        stepProgressRatio: 1.0,
        sleepProgressRatio: 0.8,
        waterProgressRatio: 1.0,
        stressLevel: 3,
        hasLoggedVitalsToday: true,
      );

      // 25 (steps) + 24 (sleep) + 20 (water) + 11.7 (stress) + 10 (vitals) = ~91
      expect(score, greaterThanOrEqualTo(85));
      expect(score, lessThanOrEqualTo(100));
    });
  });
}
