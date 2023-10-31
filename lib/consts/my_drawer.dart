import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/palette.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Palette.whiteCard, //
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const ListTile(
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
            // Add other ListTiles as needed
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
