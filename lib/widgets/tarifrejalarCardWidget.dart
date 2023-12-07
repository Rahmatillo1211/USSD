import 'package:flutter/material.dart';

class TarifRejalarWidget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String barakali_icon;
  // ignore: non_constant_identifier_names
  final String barakali_text;
  // ignore: non_constant_identifier_names
  final String barakali_text2;

  const TarifRejalarWidget(
      {super.key,
      // ignore: non_constant_identifier_names
      required this.barakali_icon,
      // ignore: non_constant_identifier_names
      required this.barakali_text,
      // ignore: non_constant_identifier_names
      required this.barakali_text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              color: Color(0xFFF6F6F6),
            ),
            child: Center(
              child: Image.asset(barakali_icon),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            barakali_text,
            style: const TextStyle(
              color: Color(0xFF5A5A5A),
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          Text(
            barakali_text2,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}