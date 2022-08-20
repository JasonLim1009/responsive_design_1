import 'package:flutter/material.dart';
import 'package:hw3/constants.dart';
import 'package:hw3/util/my_box.dart';
import 'package:hw3/util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: Row(children: [
        myDrawer,

        Expanded(
          flex: 2,
            child: Column(
              children: [
                AspectRatio(aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return const MyBox();
                      }),
                ),),
              ],
            )),

        Expanded(
            child: ListView.builder(
              itemCount: 5,
            itemBuilder: (context, index) {
              return const  MyTile();
             },
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.pink,
          ),
        ),
      ],
      ),
    );
  }
}
