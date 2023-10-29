import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/constants.dart';
import 'package:flutter_management_dashboard/util/bar_graph.dart';


class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: myCustomAppBar,
        backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          //open drawer
          myDrawer,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //overview text
                  Text("Overview",
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                  SizedBox(height: 10,),
                  //4 boxes
                  OverviewBoxes(),
                  SizedBox(height: 10,),
                  //stats & savings (2boxes)
                  StatsBarChart()
                  //Latest Transactions box
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

