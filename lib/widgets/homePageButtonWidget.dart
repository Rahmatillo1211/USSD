// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String ImagePath;
  final Color cardColor;

  const CardWidget({
    super.key,
    // ignore: non_constant_identifier_names
    required this.ImagePath,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 90,
      width: 290,  
      child: Image.asset(ImagePath),
    );
  }
}








