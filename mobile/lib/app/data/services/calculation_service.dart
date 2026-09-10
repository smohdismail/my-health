import 'dart:math';

class CalculationService {
  /// Calculates Body Mass Index (BMI)
  static double calculateBmi(double weightKg, double heightCm) {
    if (heightCm <= 0 || weightKg <= 0) return 0.0;
    final heightM = heightCm / 100.0;
    final bmi = weightKg / (heightM * heightM);
    return double.parse(bmi.toStringAsFixed(1));
  }

  /// Returns BMI category string
  static String getBmiCategory(double bmi) {
    if (bmi <= 0) return 'Unknown';
    if (bmi < 18.5) return 'Underweight';
    if (bmi < 25.0) return 'Normal weight';
    if (bmi < 30.0) return 'Overweight';
    return 'Obese';
  }

  // --- Unit Conversions ---

  static double kgToLbs(double kg) => double.parse((kg * 2.20462262).toStringAsFixed(1));
  static double lbsToKg(double lbs) => double.parse((lbs / 2.20462262).toStringAsFixed(1));

  static double cmToInches(double cm) => double.parse((cm * 0.393700787).toStringAsFixed(1));
  static double inchesToCm(double inches) => double.parse((inches / 0.393700787).toStringAsFixed(1));

  static double mgDlToMmolL(double mgDl) => double.parse((mgDl / 18.0182).toStringAsFixed(1));
  static double mmolLToMgDl(double mmolL) => double.parse((mmolL * 18.0182).toStringAsFixed(1));

  static double celsiusToFahrenheit(double c) => double.parse(((c * 9 / 5) + 32).toStringAsFixed(1));
  static double fahrenheitToCelsius(double f) => double.parse(((f - 32) * 5 / 9).toStringAsFixed(1));

  // --- Semen Analysis Calculations ---

  /// Calculates total sperm count in millions
  static double? calculateTotalSpermCount(double? concentrationMPerMl, double? volumeMl) {
    if (concentrationMPerMl == null || volumeMl == null) return null;
    return double.parse((concentrationMPerMl * volumeMl).toStringAsFixed(1));
  }

  /// Calculates total motility percentage
  static double? calculateTotalMotility(double? progressivePct, double? nonProgressivePct) {
    if (progressivePct == null && nonProgressivePct == null) return null;
    final p = progressivePct ?? 0.0;
    final np = nonProgressivePct ?? 0.0;
    final total = p + np;
    return total > 100.0 ? 100.0 : double.parse(total.toStringAsFixed(1));
  }

  /// Calculates Total Progressive Motile Sperm Count (TPMS) in millions
  static double? calculateTotalProgressiveMotileCount(double? concentrationMPerMl, double? volumeMl, double? progressiveMotilityPct) {
    if (concentrationMPerMl == null || volumeMl == null || progressiveMotilityPct == null) return null;
    final totalMotile = (concentrationMPerMl * volumeMl) * (progressiveMotilityPct / 100.0);
    return double.parse(totalMotile.toStringAsFixed(1));
  }

  // --- Female Fertile Window Estimation ---

  /// Returns estimated ovulation date given period start date and cycle length
  static DateTime estimateOvulationDate(DateTime periodStartDate, int cycleLengthDays) {
    // Standard luteal phase estimation of 14 days
    return periodStartDate.add(Duration(days: max(10, cycleLengthDays - 14)));
  }

  /// Returns 6-day fertile window [startDate, endDate]
  static Map<String, DateTime> estimateFertileWindow(DateTime periodStartDate, int cycleLengthDays) {
    final ovulation = estimateOvulationDate(periodStartDate, cycleLengthDays);
    return {
      'fertileStart': ovulation.subtract(const Duration(days: 5)),
      'ovulation': ovulation,
      'fertileEnd': ovulation.add(const Duration(days: 1)),
    };
  }

  // --- Wellness Score Calculation (Non-diagnostic Personal Trend Score) ---

  /// Computes personal wellness score between 0 and 100
  static int calculateWellnessScore({
    required double stepProgressRatio, // 0.0 to 1.0+
    required double sleepProgressRatio, // 0.0 to 1.0+
    required double waterProgressRatio, // 0.0 to 1.0+
    required int? stressLevel, // 1 (lowest) to 10 (highest)
    required bool hasLoggedVitalsToday,
  }) {
    double score = 0.0;

    // Activity weight: 25 points
    score += (stepProgressRatio.clamp(0.0, 1.0) * 25.0);

    // Sleep weight: 30 points
    score += (sleepProgressRatio.clamp(0.0, 1.0) * 30.0);

    // Hydration weight: 20 points
    score += (waterProgressRatio.clamp(0.0, 1.0) * 20.0);

    // Stress weight: 15 points
    if (stressLevel != null && stressLevel >= 1 && stressLevel <= 10) {
      final stressScore = (10 - stressLevel) / 9.0;
      score += (stressScore * 15.0);
    } else {
      score += 7.5; // neutral midpoint
    }

    // Engagement weight: 10 points
    if (hasLoggedVitalsToday) score += 10.0;

    return score.round().clamp(0, 100);
  }
}
