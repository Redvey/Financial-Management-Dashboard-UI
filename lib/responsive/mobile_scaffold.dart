import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/constants.dart';
import 'package:flutter_management_dashboard/util/my_box.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: myAppBar,
      drawer: myDrawer,
      backgroundColor: myDefaultBackground,
      body: Column(
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
                crossAxisCount: 2,
              ), itemBuilder: (context,index){
                return  MyBox();
              }),
            ),
          )
          //stats & savings (2boxes)
          //Latest Transactions box
        ],
      ),
    );
  }
}
