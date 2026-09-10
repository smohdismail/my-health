import '../local/app_database.dart';

class TrendObservation {
  final String title;
  final String description;
  final String relationshipType; // 'temporal_association', 'positive_correlation', 'negative_correlation'
  final String disclaimer;

  TrendObservation({
    required this.title,
    required this.description,
    required this.relationshipType,
    this.disclaimer = "Temporal association observed. Correlation does not imply causation.",
  });
}

class TrendEngineService {
  /// Analyzes temporal trends between sleep and mood/stress
  List<TrendObservation> analyzeSleepAndWellness(
    List<HealthMeasurementsTableData> sleepRecords,
    List<HealthMeasurementsTableData> moodRecords,
    List<HealthMeasurementsTableData> stressRecords,
  ) {
    final List<TrendObservation> observations = [];
    if (sleepRecords.length < 3 || (moodRecords.isEmpty && stressRecords.isEmpty)) {
      return observations;
    }

    double avgSleepOnLowStressDays = 0.0;
    int lowStressCount = 0;
    double avgSleepOnHighStressDays = 0.0;
    int highStressCount = 0;

    for (var stress in stressRecords) {
      // Find sleep for the same or previous day
      final matchingSleep = sleepRecords.where((s) => s.timestamp.difference(stress.timestamp).inHours.abs() <= 24);
      if (matchingSleep.isNotEmpty) {
        final sleepVal = matchingSleep.first.value / 60.0; // hours
        if (stress.value <= 4) {
          avgSleepOnLowStressDays += sleepVal;
          lowStressCount++;
        } else if (stress.value >= 7) {
          avgSleepOnHighStressDays += sleepVal;
          highStressCount++;
        }
      }
    }

    if (lowStressCount > 0 && highStressCount > 0) {
      final avgLow = avgSleepOnLowStressDays / lowStressCount;
      final avgHigh = avgSleepOnHighStressDays / highStressCount;
      final diff = avgLow - avgHigh;

      if (diff.abs() >= 0.5) {
        observations.add(
          TrendObservation(
            title: "Sleep & Stress Association",
            description: "During days with higher recorded sleep (average ${avgLow.toStringAsFixed(1)} hrs), lower stress levels were recorded compared to lower sleep days (${avgHigh.toStringAsFixed(1)} hrs).",
            relationshipType: "temporal_association",
          ),
        );
      }
    }

    return observations;
  }

  /// Analyzes lifestyle factors vs Semen Analysis trends
  List<TrendObservation> analyzeLifestyleAndSemenParameters(
    List<SemenAnalysisTableData> semenRecords,
    List<ReproductiveLifestylesTableData> lifestyleRecords,
  ) {
    final List<TrendObservation> observations = [];
    if (semenRecords.length < 2) return observations;

    // Sort chronologically
    final sortedSemen = List<SemenAnalysisTableData>.from(semenRecords)..sort((a, b) => a.collectionDate.compareTo(b.collectionDate));
    final latest = sortedSemen.last;
    final previous = sortedSemen[sortedSemen.length - 2];

    if (latest.progressiveMotilityPct != null && previous.progressiveMotilityPct != null) {
      final motilityDiff = latest.progressiveMotilityPct! - previous.progressiveMotilityPct!;

      // Check lifestyle factors in 90-day window prior to latest test (spermatogenesis cycle ~74-90 days)
      final windowStart = latest.collectionDate.subtract(const Duration(days: 90));
      final recentLifestyles = lifestyleRecords.where((l) => l.date.isAfter(windowStart) && l.date.isBefore(latest.collectionDate));

      final saunaExposures = recentLifestyles.where((l) => l.saunaExposed).length;
      final tobaccoDays = recentLifestyles.where((l) => l.tobaccoUsed).length;

      if (motilityDiff > 0) {
        observations.add(
          TrendObservation(
            title: "Progressive Motility Trend",
            description: "Progressive motility increased by ${motilityDiff.toStringAsFixed(1)} percentage points between ${previous.collectionDate.toString().split(' ')[0]} and ${latest.collectionDate.toString().split(' ')[0]}.",
            relationshipType: "temporal_association",
          ),
        );
      } else if (motilityDiff < 0) {
        String detail = "Progressive motility changed by ${motilityDiff.toStringAsFixed(1)} percentage points between tests.";
        if (saunaExposures > 0) {
          detail += " During the preceding 90-day period, sauna/heat exposure was recorded on $saunaExposures occasion(s).";
        }
        if (tobaccoDays > 0) {
          detail += " Tobacco usage was logged on $tobaccoDays day(s).";
        }
        observations.add(
          TrendObservation(
            title: "Progressive Motility Trend & Heat Exposure",
            description: detail,
            relationshipType: "temporal_association",
            disclaimer: "Heat exposure is temporally associated with sperm parameter variations. Discuss laboratory trends with a urologist or reproductive specialist.",
          ),
        );
      }
    }

    return observations;
  }
}
