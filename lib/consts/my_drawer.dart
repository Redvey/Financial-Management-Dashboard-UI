import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/palette.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const Border(right: BorderSide(color: Palette.backgroundGrey, width: 1.5)),
      backgroundColor: Palette.whiteCard,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [

            ListTile(
              title: Text(
                "CloudFinance",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,

                ),
              ),
              leading: Icon(Icons.cloud_sharp,color: Palette.blue,size: 40,),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
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
            MyDrawerListTileItem(
              title: "Overview",
              materialIcon: Icons.window_sharp,
              tapColor: false, // Set tapColor as per requirement
            ),
            MyDrawerListTileItem(
              title: "Statistics",
              materialIcon: Icons.insert_chart,
              tapColor: false, // Set tapColor as per requirement
            ),
            MyDrawerListTileItem(
              title: "Savings",
              materialIcon: Icons.savings,
            ),
            MyDrawerListTileItem(
              title: "Portfolios",
              materialIcon: Icons.pie_chart_rounded,
            ),
            MyDrawerListTileItem(
              title: "Messages",
              materialIcon: Icons.message,
            ),
            MyDrawerListTileItem(
              title: "Transactions",
              materialIcon: Icons.table_rows_rounded,
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
            MyDrawerListTileItem(
              title: "Settings",
              materialIcon: Icons.settings_rounded,
            ),
            MyDrawerListTileItem(
              title: "Appearances",
              materialIcon: Icons.photo,
            ),
            MyDrawerListTileItem(
              title: "Need Help?",
              materialIcon: Icons.help,
            ),
            SizedBox(height: 80),
            MyDrawerListTileItem(
              title: "Log Out",
              materialIcon: Icons.logout,

            ),
          ],
        ),
      ),
    );
  }
}

class MyDrawerListTileItem extends StatelessWidget {
  final String title;
  final IconData materialIcon;
  final bool tapColor;

  const MyDrawerListTileItem({
    Key? key,
    required this.title,
    required this.materialIcon,
    this.tapColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: Icon(materialIcon),
      title: Text(title),
      tileColor: tapColor ? Palette.blue : Colors.transparent, // Define your tap and regular colors accordingly
      onTap: () {
        // Add onTap functionality here if needed
      },
    );
  }
}
