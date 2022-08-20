import 'package:flutter/material.dart';
import 'package:hw3/responsive/mobile_scaffold.dart';
import 'package:hw3/responsive/tables_scaffold.dart';
import 'package:hw3/responsive/desktop_scaffold.dart';
import 'package:hw3/responsive/responsive_layout.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tablesScaffold: const TablesScaffold(),
        desktopScaffold: const DesktopScaffold(),
      ),
    );
  }
}

