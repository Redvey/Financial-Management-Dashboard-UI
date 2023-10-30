import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/constants.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: myCustomAppBar,
        drawer: myDrawer,
        backgroundColor: myDefaultBackground,
      body: const Column(
        children: [
          //overview text
          Text("Overview"),
          //4 boxes
          OverviewBoxes(),
          //stats & savings (2boxes)
          //Latest Transactions box
        ],
      ),
    );
  }
}
