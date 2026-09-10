import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ai_assistant_controller.dart';

class AIAssistantView extends GetView<AIAssistantController> {
  const AIAssistantView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Health Assistant"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shield_outlined),
            onPressed: () => _showPrivacyNotice(context),
            tooltip: "Data Privacy Settings",
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.amber.shade50,
            child: Row(
              children: const [
                Icon(Icons.info_outline, size: 18, color: Colors.amber),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Educational AI Assistant. Non-diagnostic. Discuss trends with a medical professional.",
                    style: TextStyle(fontSize: 11, color: Colors.amber),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() => ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: controller.messages.length,
                  itemBuilder: (context, index) {
                    final msg = controller.messages[index];
                    return _buildChatBubble(context, msg);
                  },
                )),
          ),
          Obx(() => controller.isLoading.value
              ? const Padding(padding: EdgeInsets.all(8.0), child: CircularProgressIndicator())
              : const SizedBox.shrink()),
          _buildSuggestedPrompts(),
          _buildInputBar(),
        ],
      ),
    );
  }

  Widget _buildChatBubble(BuildContext context, ChatMessage msg) {
    final align = msg.isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final color = msg.isUser ? Colors.teal : Colors.grey.shade200;
    final textColor = msg.isUser ? Colors.white : Colors.black87;

    return Column(
      crossAxisAlignment: align,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.all(14),
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.78),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(msg.text, style: TextStyle(color: textColor, fontSize: 14)),
        ),
        if (msg.doctorQuestions.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Questions to ask your doctor:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.purple)),
                ...msg.doctorQuestions.map((q) => Card(
                      color: Colors.purple.shade50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("• $q", style: const TextStyle(fontSize: 12, color: Colors.purple)),
                      ),
                    )),
              ],
            ),
          ),
        ]
      ],
    );
  }

  Widget _buildSuggestedPrompts() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          ActionChip(
            label: const Text("Compare last two semen analyses"),
            onPressed: () => controller.sendMessage("Compare my last two semen analyses"),
          ),
          const SizedBox(width: 8),
          ActionChip(
            label: const Text("Summarize recent sleep trends"),
            onPressed: () => controller.sendMessage("Summarize recent sleep trends"),
          ),
        ],
      ),
    );
  }

  Widget _buildInputBar() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller.textController,
              decoration: const InputDecoration(
                hintText: "Ask about your logged health data...",
                border: OutlineInputBorder(),
              ),
              onSubmitted: (_) => controller.sendMessage(),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: const Icon(Icons.send_rounded, color: Colors.teal),
            onPressed: () => controller.sendMessage(),
          ),
        ],
      ),
    );
  }

  void _showPrivacyNotice(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("AI Data Privacy"),
        content: const Text("Only non-identifying health measurements requested for your inquiry are minimized and processed. Your name and raw identifiers are never sent."),
        actions: [
          TextButton(onPressed: () => Get.back(), child: const Text("Understood")),
        ],
      ),
    );
  }
}
