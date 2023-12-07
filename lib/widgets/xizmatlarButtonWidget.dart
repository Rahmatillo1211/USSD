import 'package:flutter/material.dart';

class XizmatlarButtonWidget extends StatelessWidget {
  final String text;
  final Function()? onTap;

  const XizmatlarButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 18),
            child: Row(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromARGB(255, 61, 61, 61),
                  ),
                ),
                const Spacer(),
                 Image.asset(
                 "images/img/button_right.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
