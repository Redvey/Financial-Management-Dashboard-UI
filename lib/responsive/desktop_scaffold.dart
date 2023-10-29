import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/constants.dart';
import 'package:flutter_management_dashboard/util/my_box.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: myAppBar,
        backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          //open drawer
          myDrawer,
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //overview text
                Text("Overview"),
                //4 boxes
                AspectRatio(
                  aspectRatio: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ), itemBuilder: (context,index){
                      return  MyBox();
                    }),
                  ),
                )
                //stats & savings (2boxes)
                //Latest Transactions box
              ],
            ),
          )
        ],
      ),
    );
  }
}
