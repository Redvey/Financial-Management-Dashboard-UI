import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/palette.dart';
import 'package:flutter_management_dashboard/util/overview_info.dart';



PreferredSize myCustomAppBar = PreferredSize(
            preferredSize: Size.fromHeight(80.0), // Set your desired height here
                child: AppBar(
                  centerTitle: false,
                       elevation: 0,
                       backgroundColor: Palette.whiteCard,
                  leading: Center(child: Icon(Icons.cloud,color: Colors.blue,size: 40,)),
                  title: Text("CloudFinance",
                  style: TextStyle(color: Colors.black),),
               ),
              );

var myDrawer = Drawer(
  elevation: 0,
  backgroundColor: Palette.whiteCard,
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      ListTile(
        title: Text(
          "M E N U",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
      ),
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(Icons.window_sharp),
        title: Text("Overview"),
      ),
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(Icons.insert_chart),
        title: Text("Statistics"),
      ),
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(Icons.savings),
        title: Text("Savings"),
      ),
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(Icons.pie_chart_rounded),
        title: Text("Portfolios"),
        trailing: Icon(Icons.keyboard_arrow_down_outlined),
      ),
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(Icons.message),
        title: Text("Messages"),
      ),
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(Icons.table_rows_rounded),
        title: Text("Transactions"),
      ),
      ListTile(
        title: Text(
          "G E N E R A L",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
      ),
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(Icons.settings_rounded),
        title: Text("Settings"),
      ),
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(Icons.photo),
        title: Text("Appearances"),
      ),
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(Icons.help),
        title: Text("Need Help?"),
      ),
      SizedBox(height: 90),
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(Icons.logout),
        title: Text("Log Out"),
        onTap: () {
          // Implement log out functionality here
        },
      ),
    ],
  ),
);


var myDefaultBackground=Palette.backgroundGrey;


class OverviewBoxes extends StatelessWidget {
  const OverviewBoxes({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.5,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) =>
          FileInfoCard(overviewInfo: demoMyFiles[index]),
    );
  }
}
class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key,
    required this.overviewInfo,
  }) : super(key: key);

  final OverviewInfo overviewInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Palette.whiteCard,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(overviewInfo.icon),
              const SizedBox(width: 10),
              Text(overviewInfo.title),
            ],
          ),
          Row(
            children: [
              Text(
                overviewInfo.amount,
              ),
              const SizedBox(width: 10),
              Chip(
                label: Text(overviewInfo.percentChange),
              ),
            ],
          ),
          RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: overviewInfo.amountChange),
                  TextSpan(text: ' than last month',style: TextStyle(color: Colors.grey)),
                ],
              ))
        ],
      ),
    );
  }
}