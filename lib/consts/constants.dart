
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/palette.dart';
import 'package:flutter_management_dashboard/util/overview_info.dart';


double getHeight(double screenWidth) {
  if (screenWidth < 500) {
    return 40; // Height for mobile
  } else if (screenWidth < 1100) {
    return 60; // Height for tablet
  } else {
    return 80; // Height for desktop
  }
}

Widget myCustomAppBar(BuildContext context) {
  return Container(
    width: double.infinity,
    height: getHeight(MediaQuery.of(context).size.width),
    decoration: BoxDecoration(
      color: Palette.whiteCard,
    ),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DrawerHeader(
          child: Row(
            children: [
              Center(
                child: Icon(Icons.cloud, color: Colors.blue, size: 40),
              ),
              const SizedBox(width: 10),
              Text(
                "CloudFinance",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(width: 40,),
        Text(
          "Dashboard",
          style: TextStyle(color: Colors.black),
        ),
        SizedBox(width: 100,),
        //Searchbox
        Container(
          width: 350,
          decoration: BoxDecoration(
            color: Palette.backgroundGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              contentPadding: EdgeInsets.all(18),
              prefixIcon: Icon(CupertinoIcons.search),
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Palette.backgroundGrey,
          ),
          child: IconButton(
            color: Colors.black,
            icon: Icon(Icons.notifications), // Replace with CupertinoIcons.bell
            onPressed: () {
              // Add your notification button logic here
            },
          ),
        ),
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('url_to_profile_image'),
              radius: 15,
            ),
            const SizedBox(width: 8),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name", style: TextStyle(color: Colors.black)),
                  Text("email@example.com", style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}














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
      decoration: const BoxDecoration(
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
              _buildAmountText(),
              const SizedBox(width: 10),
              _buildCustomChip(),
            ],
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: overviewInfo.amountChange,
                  style: overviewInfo == demoMyFiles[1] // Check if the current item is at index 2
                      ? TextStyle(color: Palette.bgred) // Apply white color for index 2
                      : TextStyle(color: Colors.green), // Default color for other indices
                ),
                const TextSpan(text: ' than last month'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomChip() {
    if (overviewInfo == demoMyFiles[1]) {
      return Chip(
        label: Text(
          overviewInfo.percentChange,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Palette.bgred,
      );
    } else {
      return Chip(
        label: Text(
          overviewInfo.percentChange,
          style: const TextStyle(color: Colors.green),
        ),
        backgroundColor: Palette.bgreen,
      );
    }
  }

  Widget _buildAmountText() {
    return Text(
        overviewInfo.amount,
        style: const TextStyle(color: Colors.black,
        fontSize: 20,fontWeight: FontWeight.w700),
      );
    }
  }




