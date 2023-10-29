import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/palette.dart';

var myAppBar=AppBar(
  elevation: 0,
  backgroundColor: Palette.whiteCard,
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