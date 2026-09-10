import 'package:get/get.dart';
import '../../data/repositories/database_repository.dart';
import '../auth/auth_controller.dart';

class TimelineEntry {
  final String title;
  final String detail;
  final DateTime timestamp;
  final String source;
  final String category;

  TimelineEntry({
    required this.title,
    required this.detail,
    required this.timestamp,
    required this.source,
    required this.category,
  });
}

class TimelineController extends GetxController {
  final DatabaseRepository repository;
  final AuthController authController;

  final RxList<TimelineEntry> entries = <TimelineEntry>[].obs;
  final RxString selectedCategory = 'all'.obs;

  TimelineController({required this.repository, required this.authController});

  @override
  void onInit() {
    super.onInit();
    loadTimeline();
  }

  void filterCategory(String category) {
    selectedCategory.value = category;
    loadTimeline();
  }

  void loadTimeline() async {
    final userId = authController.currentUserId.value;
    if (userId.isEmpty) return;

    final List<TimelineEntry> list = [];

    final measurements = await repository.getMeasurementsForUser(userId);
    for (var m in measurements) {
      list.add(TimelineEntry(
        title: m.type.replaceAll('_', ' ').toUpperCase(),
        detail: "${m.value} ${m.unit}",
        timestamp: m.timestamp,
        source: m.source,
        category: 'vitals',
      ));
    }

    final semen = await repository.getSemenAnalysis(userId);
    for (var s in semen) {
      list.add(TimelineEntry(
        title: "Semen Analysis Result",
        detail: "Conc: ${s.concentrationMPerMl ?? '-'} M/mL | Prog Motility: ${s.progressiveMotilityPct ?? '-'}% | Vol: ${s.volumeMl ?? '-'} mL",
        timestamp: s.collectionDate,
        source: s.labName ?? 'Laboratory',
        category: 'reproductive',
      ));
    }

    final hormones = await repository.getHormones(userId);
    for (var h in hormones) {
      list.add(TimelineEntry(
        title: "Hormone: ${h.testName}",
        detail: "${h.resultValue} ${h.unit}",
        timestamp: h.collectionDate,
        source: h.labName ?? 'Laboratory',
        category: 'hormones',
      ));
    }

    list.sort((a, b) => b.timestamp.compareTo(a.timestamp));

    if (selectedCategory.value != 'all') {
      entries.value = list.where((e) => e.category == selectedCategory.value).toList();
    } else {
      entries.value = list;
    }
  }
}
