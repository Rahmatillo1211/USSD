import 'package:flutter/material.dart';

class OperatorBilanBoglanishWidget extends StatelessWidget {
  final String iconPath;
  final String kodText;
  final String yozuvText;
  final Color textColor;
  const OperatorBilanBoglanishWidget({
    super.key,
    required this.iconPath,
    required this.kodText,
    required this.yozuvText,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8,
            ),
            color: Color.fromARGB(255, 229, 229, 229),
          ),
          child: Center(
            child: Image.asset(iconPath),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              kodText,
              style:  TextStyle(
                  height: 3,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: textColor),
            ),
            Text(
              yozuvText,
              style: const TextStyle(
                height: 1.5,
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xFF5A5A5A),
              ),
            ),
          ],
        )
      ],
    );
  }
}
