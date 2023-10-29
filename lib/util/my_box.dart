import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/palette.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Palette.whiteCard,
      ),
    );
  }
}
