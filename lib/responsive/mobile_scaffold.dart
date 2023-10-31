import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/constants.dart';

import '../consts/my_drawer.dart';


class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: MyDrawer,
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
