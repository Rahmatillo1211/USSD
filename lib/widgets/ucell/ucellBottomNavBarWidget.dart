
import 'package:flutter/material.dart';

class BottomNavBarWidget2 extends StatefulWidget {
  final Function(int index) onTappItem;

  const BottomNavBarWidget2({
    Key? key,
    required this.onTappItem,
  }) : super(key: key);

  @override
  _BottomNavBarWidgetState2 createState() => _BottomNavBarWidgetState2();
}

class _BottomNavBarWidgetState2 extends State<BottomNavBarWidget2> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: const Color(0xFFF6F6F6),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 0 ? "images/img/shome.png" : "images/img/home2.png",
          ),
          label: 'Asosiy',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
           selectedIndex == 1
                ? "images/img/sinternet.png"
                : "images/img/internet.png",
          ),
          label: 'Internet',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
           selectedIndex == 2
                ? "images/img/ssetting.png"
                : "images/img/setting.png",
          ),
          label: 'Sozlamalar',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: const Color(0xFF652D86),
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
