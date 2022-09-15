import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'homescreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selecIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selecIndex = index;
    });
  }

  final widgetOptions = [
    const HomeScreen(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selecIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selecIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.lightBlue,
        iconSize: 24,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/home.png")), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/favorite.png")),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/play.png")), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/person.png")), label: "")
        ],
      ),
    );
  }
}
