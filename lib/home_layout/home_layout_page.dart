import 'package:flutter/material.dart';
import 'package:todoapproute/pages/settings_page/settings_page.dart';
import 'package:todoapproute/pages/tasks_pages/tasks_page.dart';
import 'package:todoapproute/shared/theme/Colors.dart';

class home_layout extends StatefulWidget {
  static const String routeName = "home-layout";

  @override
  State<home_layout> createState() => _home_layoutState();
}

class _home_layoutState extends State<home_layout> {
  int currentSelectedIndex = 0;
  List<Widget> Screens=[
    tasks_pages(),
    settings_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          onTap: (int index) {
            currentSelectedIndex = index;
            setState(() {});
          },
          currentIndex: currentSelectedIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          ],
        ),
      ),
      body: Screens[currentSelectedIndex],
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        shape: const StadiumBorder(
            side: BorderSide(
          color: Colors.white,
          width: 4,
        )),
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
