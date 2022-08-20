import 'package:flutter/material.dart';
import 'package:hw3/constants.dart';
import 'package:hw3/util/my_box.dart';
import 'package:hw3/util/my_tile.dart';

class TablesScaffold extends StatefulWidget {
  const TablesScaffold({Key? key}) : super(key: key);

  @override
  State<TablesScaffold> createState() => _TablesScaffoldState();
}

class _TablesScaffoldState extends State<TablesScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              child: GridView.builder(
                itemCount: 4,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return const MyBox();
                },
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const MyTile();
                  },
              ),
          ),
        ],
      ),
    );
  }
}
