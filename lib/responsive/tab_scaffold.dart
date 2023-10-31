import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/constants.dart';
import 'package:flutter_management_dashboard/consts/my_drawer.dart';
import 'package:flutter_management_dashboard/util/latest_transaction.dart';

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
       drawer: MyDrawer(),

        backgroundColor: myDefaultBackground,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                          flex: 3,
                          child: StatsBarChart(),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          flex: 1,
                          child: SavingsGraph(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    LatestTransaction(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
