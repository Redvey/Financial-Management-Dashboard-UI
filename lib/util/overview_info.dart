import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/palette.dart';


class OverviewInfo {
  final String title;
  final IconData icon;
  final String amount;
  final String percentChange;
  final String amountChange;
  final Color color;
  final Color textColor;

  OverviewInfo({
    required this.title,
    required this.icon,
    required this.amount,
    required this.percentChange,
    required this.amountChange,
    required this.color,
    required this.textColor,
  });
}

List demoMyFiles = [
  OverviewInfo(
    icon: Icons.monetization_on_outlined,
    title: "Earnings",
    amount: "\$928.41",
    color: Palette.bgreen,
    percentChange: "12.8%",
    amountChange: "\$118.8",
    textColor: Colors.green,

  ),
  OverviewInfo(
    icon: Icons.shopping_cart_outlined,
    title: "Spendings",
    amount: "\$169.43",
    color: Palette.bgred,
    percentChange: "12.8%",
    amountChange: "\$-5.2",
    textColor: Colors.white,
  ),
  OverviewInfo(
    icon: Icons.savings_outlined,
    title: "Savings",
    amount: "\$928.41",
    color: Palette.bgreen,
    percentChange: "12.8%",
    amountChange: "\$118.8",
    textColor: Colors.green,
  ),
  OverviewInfo(
    icon: Icons.insights,
    title: "Investments",
    amount: "\$928.41",
    color: Palette.bgreen,
    percentChange: "12.8%",
    amountChange: "\$118.8",
    textColor: Colors.green,
  ),
];