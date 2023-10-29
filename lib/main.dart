import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/responsive/desktop_scaffold.dart';
import 'package:flutter_management_dashboard/responsive/mobile_scaffold.dart';
import 'package:flutter_management_dashboard/responsive/responsive.dart';
import 'package:flutter_management_dashboard/responsive/tab_scaffold.dart';

void main() {
  runApp(const FinanceDashboard());
}

class FinanceDashboard extends StatelessWidget {
  const FinanceDashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          tabletScaffold: TabletScaffold(),
          desktopScaffold: DesktopScaffold()
      ),
    );
  }
}

