import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Health Overview"),
        actions: [
          IconButton(
            icon: const Icon(Icons.tune_rounded),
            onPressed: () => _showFilterDialog(context),
            tooltip: "Filter Date Range",
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWellnessScoreCard(context),
            const SizedBox(height: 16),
            _buildFilterChips(),
            const SizedBox(height: 16),
            Text("Vitals & Daily Activity", style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _buildMetricsGrid(),
            const SizedBox(height: 16),
            Text("Reproductive Health Summary", style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _buildReproductiveSummaryCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildWellnessScoreCard(BuildContext context) {
    return Obx(() => Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade700, Colors.teal.shade900],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.teal.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: CircularProgressIndicator(
                      value: controller.wellnessScore.value / 100.0,
                      strokeWidth: 8,
                      backgroundColor: Colors.white24,
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  Text(
                    "${controller.wellnessScore.value}",
                    style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Personal Wellness Score",
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Non-diagnostic trend score based on your sleep, activity, hydration, and vitals logging.",
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildFilterChips() {
    return Obx(() => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ChoiceChip(
                label: const Text("Today"),
                selected: controller.selectedFilter.value == DateRangeFilter.today,
                onSelected: (_) => controller.setDateFilter(DateRangeFilter.today),
              ),
              const SizedBox(width: 8),
              ChoiceChip(
                label: const Text("This Week"),
                selected: controller.selectedFilter.value == DateRangeFilter.week,
                onSelected: (_) => controller.setDateFilter(DateRangeFilter.week),
              ),
              const SizedBox(width: 8),
              ChoiceChip(
                label: const Text("This Month"),
                selected: controller.selectedFilter.value == DateRangeFilter.month,
                onSelected: (_) => controller.setDateFilter(DateRangeFilter.month),
              ),
            ],
          ),
        ));
  }

  Widget _buildMetricsGrid() {
    return Obx(() => GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: 1.4,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: [
            _buildMetricTile(
              title: "Steps",
              value: "${controller.todaySteps.value.toInt()}",
              unit: "steps",
              icon: Icons.directions_walk_rounded,
              color: Colors.orange,
            ),
            _buildMetricTile(
              title: "Sleep",
              value: (controller.todaySleepMinutes.value / 60.0).toStringAsFixed(1),
              unit: "hours",
              icon: Icons.bedtime_rounded,
              color: Colors.indigo,
            ),
            _buildMetricTile(
              title: "Heart Rate",
              value: controller.latestHeartRate.value > 0 ? "${controller.latestHeartRate.value.toInt()}" : "--",
              unit: "BPM",
              icon: Icons.favorite_rounded,
              color: Colors.red,
            ),
            _buildMetricTile(
              title: "Blood Pressure",
              value: controller.latestBloodPressure.value,
              unit: "mmHg",
              icon: Icons.speed_rounded,
              color: Colors.blue,
            ),
            _buildMetricTile(
              title: "Hydration",
              value: "${controller.todayWaterMl.value.toInt()}",
              unit: "mL",
              icon: Icons.local_drink_rounded,
              color: Colors.cyan,
            ),
            _buildMetricTile(
              title: "Weight",
              value: controller.latestWeight.value > 0 ? controller.latestWeight.value.toStringAsFixed(1) : "--",
              unit: "kg",
              icon: Icons.monitor_weight_rounded,
              color: Colors.teal,
            ),
          ],
        ));
  }

  Widget _buildMetricTile({
    required String title,
    required String value,
    required String unit,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.grey)),
                Icon(icon, color: color, size: 22),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(width: 4),
                Text(unit, style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReproductiveSummaryCard(BuildContext context) {
    return Obx(() {
      final records = controller.semenRecords;
      if (records.isEmpty) {
        return Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Semen Analysis History", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                const Text("No laboratory semen analysis entries recorded yet.", style: TextStyle(color: Colors.grey, fontSize: 13)),
                const SizedBox(height: 12),
                ElevatedButton.icon(
                  onPressed: () => Get.toNamed('/reproductive'),
                  icon: const Icon(Icons.add_rounded, size: 18),
                  label: const Text("Record Laboratory Result"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade700, foregroundColor: Colors.white),
                ),
              ],
            ),
          ),
        );
      }

      final latest = records.first;
      return Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Latest Semen Analysis", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.purple)),
                  Text(latest.collectionDate.toString().split(' ')[0], style: const TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildSubStat("Concentration", "${latest.concentrationMPerMl ?? '--'} M/mL"),
                  _buildSubStat("Prog Motility", "${latest.progressiveMotilityPct ?? '--'}%"),
                  _buildSubStat("Morphology", "${latest.morphologyPct ?? '--'}%"),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildSubStat(String label, String value) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        const SizedBox(height: 2),
        Text(label, style: const TextStyle(fontSize: 11, color: Colors.grey)),
      ],
    );
  }

  void _showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Select Timeframe"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text("Today"),
              onTap: () {
                controller.setDateFilter(DateRangeFilter.today);
                Get.back();
              },
            ),
            ListTile(
              title: const Text("Past 7 Days"),
              onTap: () {
                controller.setDateFilter(DateRangeFilter.week);
                Get.back();
              },
            ),
            ListTile(
              title: const Text("Past 30 Days"),
              onTap: () {
                controller.setDateFilter(DateRangeFilter.month);
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
