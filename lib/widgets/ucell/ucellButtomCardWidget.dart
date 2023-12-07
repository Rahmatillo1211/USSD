import 'package:flutter/material.dart';

class UcellButtomWidget extends StatelessWidget {
  final String iconPath;
  final String buttonText;
  final Function()? onTap;

  const UcellButtomWidget({
    super.key,
    required this.iconPath,
    required this.buttonText,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(12),
        width: double.infinity,
        height: 61,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          color: Colors.white,
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 14,
            ),
            Image.asset(iconPath),
            const SizedBox(
              width: 8,
            ),
            Text(
              buttonText,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset("images/img/button_right.png"),
            ),
          ],
        ),
      ),
    );
  }
}