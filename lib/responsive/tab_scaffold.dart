import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/constants.dart';
import 'package:flutter_management_dashboard/util/latest_transaction.dart';

import '../consts/my_drawer.dart';
import '../util/bar_graph.dart';
import '../util/savings_graph.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


        backgroundColor: myDefaultBackground,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyDrawer(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myCustomAppBar(context),
                      const Text(
                        "Overview",
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      const OverviewBoxes(),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: StatsBarChart(),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            flex: 1,
                            child: SavingsGraph(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const LatestTransaction(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
