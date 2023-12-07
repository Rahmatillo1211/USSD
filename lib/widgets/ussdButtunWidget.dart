import 'package:flutter/material.dart';

class UssdCodeButtonWidget extends StatelessWidget {
  final String codeTitle;
  final String ussdCode;
  final Color textColor;
  const UssdCodeButtonWidget({
    super.key,
    required this.codeTitle,
    required this.ussdCode, 
    required this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
      width: double.infinity,
      height: 57,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 14),
            child: Text(
              codeTitle,
              style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 14),
            child: Text(
              ussdCode,
              style:  TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
