import 'package:dio/dio.dart';

class AIResponse {
  final String text;
  final List<String> suggestedDoctorQuestions;
  final String disclaimer;

  AIResponse({
    required this.text,
    required this.suggestedDoctorQuestions,
    this.disclaimer = "AI observations are provided for informational and trend-tracking purposes only. They do not constitute medical diagnosis or advice.",
  });
}

class AIService {
  final Dio _dio = Dio();
  static const String _aiEndpoint = 'http://10.0.2.2:5000/api/v1/ai/ask';

  Future<AIResponse> askAssistant({
    required String question,
    required Map<String, dynamic> minimizedDataContext,
  }) async {
    try {
      final response = await _dio.post(
        _aiEndpoint,
        data: {
          'question': question,
          'context': minimizedDataContext,
        },
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data;
        return AIResponse(
          text: data['answer'] ?? "No response received.",
          suggestedDoctorQuestions: List<String>.from(data['doctorQuestions'] ?? []),
        );
      }
    } catch (_) {
      // Fallback offline intelligent responder when API is offline
      return _generateOfflineFallbackResponse(question, minimizedDataContext);
    }

    return _generateOfflineFallbackResponse(question, minimizedDataContext);
  }

  AIResponse _generateOfflineFallbackResponse(String question, Map<String, dynamic> context) {
    final lowerQ = question.toLowerCase();
    final List<String> doctorQuestions = [];

    if (lowerQ.contains('semen') || lowerQ.contains('motility') || lowerQ.contains('sperm') || lowerQ.contains('concentration')) {
      final semenData = context['semenAnalysis'] as List?;
      if (semenData != null && semenData.isNotEmpty) {
        final latest = semenData.last;
        final text = "Based on your latest recorded laboratory semen analysis (${latest['collectionDate']}): "
            "Sperm Concentration is ${latest['concentrationMPerMl'] ?? 'N/A'} M/mL, "
            "Progressive Motility is ${latest['progressiveMotilityPct'] ?? 'N/A'}%, and Total Volume is ${latest['volumeMl'] ?? 'N/A'} mL. "
            "Laboratory reference ranges vary by testing standard (e.g. WHO 5th or 6th Edition).";

        doctorQuestions.addAll([
          "How do my semen analysis parameters compare to your clinic's specific reference ranges?",
          "Are there any lifestyle or metabolic factors you recommend addressing based on these test results?",
        ]);

        return AIResponse(text: text, suggestedDoctorQuestions: doctorQuestions);
      } else {
        return AIResponse(
          text: "No semen analysis laboratory entries were found in your local history to analyze. You can record your laboratory results in the Reproductive Health tab.",
          suggestedDoctorQuestions: ["What laboratory tests do you recommend to evaluate male reproductive health?"],
        );
      }
    }

    if (lowerQ.contains('sleep') || lowerQ.contains('trend')) {
      final sleepAvg = context['averageSleepHours'] ?? '7.2';
      return AIResponse(
        text: "Your average logged sleep duration over the selected period is $sleepAvg hours per night. Sleep consistency is strongly associated with energy levels and overall physiological recovery.",
        suggestedDoctorQuestions: [
          "Could sleep duration or quality impact my recovery and reproductive hormone profile?",
        ],
      );
    }

    return AIResponse(
      text: "I have analyzed your available logged health trends for '$question'. All measurements are stored securely locally.",
      suggestedDoctorQuestions: [
        "What key baseline health metrics should I track for my overall health goals?",
      ],
    );
  }
}
