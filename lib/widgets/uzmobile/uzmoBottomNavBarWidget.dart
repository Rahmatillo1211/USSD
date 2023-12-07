import 'package:flutter/material.dart';

class BottomNavBarWidget4 extends StatefulWidget {
  final Function(int index) onTappItem;

  const BottomNavBarWidget4({
    Key? key,
    required this.onTappItem,
  }) : super(key: key);

  @override
  _BottomNavBarWidgetState4 createState() => _BottomNavBarWidgetState4();
}

class _BottomNavBarWidgetState4 extends State<BottomNavBarWidget4> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: const Color(0xFFF6F6F6),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 0
                ? "images/img/khome.png"
                : "images/img/home2.png",
          ),
          label: 'Asosiy',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 1
                ? "images/img/kinternet.png"
                : "images/img/internet.png",
          ),
          label: 'Internet',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 2
                ? "images/img/ksetting.png"
                : "images/img/setting.png",
          ),
          label: 'Sozlamalar',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: const Color(0xFF01B4FF),
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
