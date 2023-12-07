import 'package:flutter/material.dart';

class InternetPaketlarCardWidget extends StatelessWidget {
  final String textgb;
  final String textsum;
  final String textkun;
   final Function()? onTap2;
   final Color gbColor;

  const InternetPaketlarCardWidget(
      {super.key,
      required this.textgb,
      required this.textsum,
      required this.textkun, this.onTap2, required this.gbColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        color: Colors.white,
      ),
      child: SizedBox(
        height: 139,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: onTap2,
                child: Container(
                  child: Text(
                    textgb,
                    style:  TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: gbColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  const Text(
                    "To'plam narxi",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF858585),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    textsum,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    "Amal qilish muddati",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF858585),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    textkun,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}