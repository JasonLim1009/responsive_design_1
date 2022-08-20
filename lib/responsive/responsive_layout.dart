import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tablesScaffold;
  final Widget desktopScaffold;

  ResponsiveLayout({
    required this.mobileScaffold,
    required this.tablesScaffold,
    required this.desktopScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      if (contraints.maxWidth < 500 ) {
        return mobileScaffold;
      } else if (contraints.maxWidth < 1100) {
        return tablesScaffold;
      } else {
        return desktopScaffold;
      }
    },);
  }
}
