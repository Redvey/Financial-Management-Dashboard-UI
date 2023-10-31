import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/constants.dart';
import 'package:flutter_management_dashboard/util/bar_graph.dart';
import 'package:flutter_management_dashboard/util/latest_transaction.dart';
import 'package:flutter_management_dashboard/util/savings_graph.dart';

import '../consts/my_drawer.dart';


class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: myDefaultBackground,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    myCustomAppBar(context),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

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
                                flex: 4,
                                child: StatsBarChart(),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                flex: 2,
                                child: SavingsGraph(),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          LatestTransaction(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


