// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  final Function(int index) onTappItem;

  const BottomNavBarWidget({
    Key? key,
    required this.onTappItem,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: const Color(0xFFF6F6F6),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 0 ? "images/img/home.png" : "images/img/home2.png",
          ),
          label: 'Asosiy',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 1
                ? "images/img/internet2.png"
                : "images/img/internet.png",
          ),
          label: 'Internet',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 2
                ? "images/img/setting2.png"
                : "images/img/setting.png",
          ),
          label: 'Sozlamalar',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: const Color(0xFFFFBE00),
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
