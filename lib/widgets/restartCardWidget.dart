import 'package:flutter/material.dart';

class RestartXizmatiWIdget extends StatelessWidget {
  final Color restartColor;

  const RestartXizmatiWIdget({super.key, required this.restartColor,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        color: Colors.white,
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: Text(
                "Sizga qo'ng'iroq qilishadi",
                style: TextStyle(
                  color: restartColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: Divider(
                height: 1,
                color: Color(0xFFFAF8EC),
              ),
            ),
            const Text(
              "“RESTART” xizmati - bu tarif rejani qayta faollashtirish xizmatidir.",
              style: TextStyle(
                color: Color(0xFF858585),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
