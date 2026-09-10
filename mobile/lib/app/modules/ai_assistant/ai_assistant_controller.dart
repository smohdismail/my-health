import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/repositories/database_repository.dart';
import '../../data/services/ai_service.dart';
import '../auth/auth_controller.dart';

class ChatMessage {
  final String text;
  final bool isUser;
  final List<String> doctorQuestions;

  ChatMessage({
    required this.text,
    required this.isUser,
    this.doctorQuestions = const [],
  });
}

class AIAssistantController extends GetxController {
  final DatabaseRepository repository;
  final AuthController authController;
  final AIService aiService = AIService();

  final textController = TextEditingController();
  final RxList<ChatMessage> messages = <ChatMessage>[].obs;
  final RxBool isLoading = false.obs;

  AIAssistantController({required this.repository, required this.authController});

  @override
  void onInit() {
    super.onInit();
    messages.add(ChatMessage(
      text: "Hello! I am your confidential AI Health Assistant. I can help analyze your logged sleep, activity, vitals, and laboratory semen analysis trends.\n\n"
          "I do not make medical diagnoses or prescribe treatment. What would you like to explore today?",
      isUser: false,
    ));
  }

  Future<void> sendMessage([String? predefinedText]) async {
    final query = predefinedText ?? textController.text.trim();
    if (query.isEmpty) return;

    messages.add(ChatMessage(text: query, isUser: true));
    textController.clear();
    isLoading.value = true;

    try {
      final userId = authController.currentUserId.value;
      final semen = await repository.getSemenAnalysis(userId);
      final measurements = await repository.getMeasurementsForUser(userId);

      // Data Minimization Payload
      final Map<String, dynamic> minimizedContext = {
        'semenAnalysis': semen.map((s) => {
          'collectionDate': s.collectionDate.toString().split(' ')[0],
          'concentrationMPerMl': s.concentrationMPerMl,
          'progressiveMotilityPct': s.progressiveMotilityPct,
          'volumeMl': s.volumeMl,
        }).toList(),
        'recentVitalsCount': measurements.length,
      };

      final response = await aiService.askAssistant(
        question: query,
        minimizedDataContext: minimizedContext,
      );

      messages.add(ChatMessage(
        text: response.text,
        isUser: false,
        doctorQuestions: response.suggestedDoctorQuestions,
      ));
    } catch (_) {
      messages.add(ChatMessage(
        text: "I was unable to complete the analysis at this moment. All your data remains stored safely locally.",
        isUser: false,
      ));
    } finally {
      isLoading.value = false;
    }
  }
}
