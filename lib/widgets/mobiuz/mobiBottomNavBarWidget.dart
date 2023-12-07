
import 'package:flutter/material.dart';

class BottomNavBarWidget3 extends StatefulWidget {
  final Function(int index) onTappItem;

  const BottomNavBarWidget3({
    Key? key,
    required this.onTappItem,
  }) : super(key: key);

  @override
  _BottomNavBarWidgetState3 createState() => _BottomNavBarWidgetState3();
}

class _BottomNavBarWidgetState3 extends State<BottomNavBarWidget3> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: const Color(0xFFF6F6F6),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 0 ? "images/img/qhome.png" : "images/img/home2.png",
          ),
          label: 'Asosiy',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
           selectedIndex == 1
                ? "images/img/qinternet.png"
                : "images/img/internet.png",
          ),
          label: 'Internet',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
           selectedIndex == 2
                ? "images/img/qsetting.png"
                : "images/img/setting.png",
          ),
          label: 'Sozlamalar',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: const Color.fromARGB(255, 179, 0, 12),
      onTap: (value) => itemonTapped(value),
    );
  }

  void itemonTapped(int value) {
    setState(() {
      selectedIndex = value;
    });
    widget.onTappItem(value);
  }
}
