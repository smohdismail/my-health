import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'reproductive_controller.dart';
import 'semen_form_view.dart';
import 'hormone_form_view.dart';

class ReproductiveView extends GetView<ReproductiveController> {
  const ReproductiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Reproductive & Hormone Health"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Semen Analysis"),
              Tab(text: "Hormones"),
              Tab(text: "Trends & Factors"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildSemenTab(context),
            _buildHormonesTab(context),
            _buildTrendsTab(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSemenTab(BuildContext context) {
    return Obx(() {
      final records = controller.semenRecords;
      return Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            color: Colors.purple.shade50,
            child: Row(
              children: [
                Icon(Icons.info_outline, color: Colors.purple.shade900),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    "Recorded values preserve your laboratory results. AI trend observations do not replace medical evaluation.",
                    style: TextStyle(fontSize: 12, color: Colors.purple),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: records.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.science_outlined, size: 64, color: Colors.grey.shade400),
                        const SizedBox(height: 12),
                        const Text("No Semen Analysis Entries Recorded", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        const SizedBox(height: 4),
                        const Text("Log your laboratory results to track 3/6/12 month parameters."),
                        const SizedBox(height: 16),
                        ElevatedButton.icon(
                          onPressed: () => Get.to(() => const SemenFormView()),
                          icon: const Icon(Icons.add),
                          label: const Text("Add Semen Analysis"),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: records.length,
                    itemBuilder: (context, index) {
                      final r = records[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 12),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Lab Date: ${r.collectionDate.toString().split(' ')[0]}", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                  Chip(label: Text(r.labName ?? 'User Logged'), backgroundColor: Colors.purple.shade100),
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildStatColumn("Volume", "${r.volumeMl ?? '--'} mL"),
                                  _buildStatColumn("Concentration", "${r.concentrationMPerMl ?? '--'} M/mL"),
                                  _buildStatColumn("Total Count", "${r.totalCountM ?? '--'} M"),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildStatColumn("Prog Motility", "${r.progressiveMotilityPct ?? '--'}%"),
                                  _buildStatColumn("Total Motility", "${r.totalMotilityPct ?? '--'}%"),
                                  _buildStatColumn("Morphology", "${r.morphologyPct ?? '--'}%"),
                                ],
                              ),
                              if (r.notes != null && r.notes!.isNotEmpty) ...[
                                const SizedBox(height: 8),
                                Text("Notes: ${r.notes}", style: const TextStyle(fontSize: 12, color: Colors.grey)),
                              ]
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Get.to(() => const SemenFormView()),
                icon: const Icon(Icons.add_rounded),
                label: const Text("Record Laboratory Semen Analysis"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade800, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 14)),
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget _buildHormonesTab(BuildContext context) {
    return Obx(() {
      final records = controller.hormoneRecords;
      return Column(
        children: [
          Expanded(
            child: records.isEmpty
                ? const Center(child: Text("No hormone laboratory results recorded yet."))
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: records.length,
                    itemBuilder: (context, index) {
                      final h = records[index];
                      final hasRef = h.refRangeLow != null && h.refRangeHigh != null;
                      return Card(
                        margin: const EdgeInsets.only(bottom: 12),
                        child: ListTile(
                          title: Text(h.testName, style: const TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text("Collection Date: ${h.collectionDate.toString().split(' ')[0]}\nRef Range: ${hasRef ? "${h.refRangeLow} - ${h.refRangeHigh} ${h.unit}" : "Not specified"}"),
                          trailing: Text("${h.resultValue} ${h.unit}", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.purple)),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Get.to(() => const HormoneFormView()),
                icon: const Icon(Icons.add_rounded),
                label: const Text("Add Hormone Result"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade700, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 14)),
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget _buildTrendsTab(BuildContext context) {
    return Obx(() {
      final trends = controller.trendObservations;
      if (trends.isEmpty) {
        return const Center(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Text("Log at least two laboratory tests and lifestyle entries to view temporal trend associations.", textAlign: TextAlign.center),
          ),
        );
      }

      return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: trends.length,
        itemBuilder: (context, index) {
          final t = trends[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(t.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.teal)),
                  const SizedBox(height: 6),
                  Text(t.description, style: const TextStyle(fontSize: 13)),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.amber.shade50, borderRadius: BorderRadius.circular(6)),
                    child: Text(t.disclaimer, style: TextStyle(fontSize: 11, color: Colors.amber.shade900)),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }

  Widget _buildStatColumn(String title, String val) {
    return Column(
      children: [
        Text(val, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        const SizedBox(height: 2),
        Text(title, style: const TextStyle(fontSize: 11, color: Colors.grey)),
      ],
    );
  }
}
