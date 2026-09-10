import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'timeline_controller.dart';

class TimelineView extends GetView<TimelineController> {
  const TimelineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Unified Health Timeline")),
      body: Column(
        children: [
          Obx(() => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    FilterChip(
                      label: const Text("All"),
                      selected: controller.selectedCategory.value == 'all',
                      onSelected: (_) => controller.filterCategory('all'),
                    ),
                    const SizedBox(width: 8),
                    FilterChip(
                      label: const Text("Vitals"),
                      selected: controller.selectedCategory.value == 'vitals',
                      onSelected: (_) => controller.filterCategory('vitals'),
                    ),
                    const SizedBox(width: 8),
                    FilterChip(
                      label: const Text("Reproductive"),
                      selected: controller.selectedCategory.value == 'reproductive',
                      onSelected: (_) => controller.filterCategory('reproductive'),
                    ),
                    const SizedBox(width: 8),
                    FilterChip(
                      label: const Text("Hormones"),
                      selected: controller.selectedCategory.value == 'hormones',
                      onSelected: (_) => controller.filterCategory('hormones'),
                    ),
                  ],
                ),
              )),
          Expanded(
            child: Obx(() {
              final list = controller.entries;
              if (list.isEmpty) {
                return const Center(child: Text("No health events recorded in timeline."));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final entry = list[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: _getCategoryColor(entry.category),
                        child: Icon(_getCategoryIcon(entry.category), color: Colors.white, size: 20),
                      ),
                      title: Text(entry.title, style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text("${entry.detail}\nSource: ${entry.source}"),
                      trailing: Text(
                        entry.timestamp.toString().split(' ')[0],
                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }

  Color _getCategoryColor(String cat) {
    switch (cat) {
      case 'reproductive':
        return Colors.purple;
      case 'hormones':
        return Colors.deepPurple;
      case 'vitals':
      default:
        return Colors.teal;
    }
  }

  IconData _getCategoryIcon(String cat) {
    switch (cat) {
      case 'reproductive':
        return Icons.science_rounded;
      case 'hormones':
        return Icons.biotech_rounded;
      case 'vitals':
      default:
        return Icons.favorite_rounded;
    }
  }
}
