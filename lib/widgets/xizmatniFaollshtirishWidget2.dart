import 'package:flutter/material.dart';

class XizmatniFaollashtirishWIdget2 extends StatelessWidget {
  final Color codesColor;
  const XizmatniFaollashtirishWIdget2({super.key, required this.codesColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Xizmatni faollashtirish",
              style: TextStyle(
                color: Color(0xFF333333),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  " *321*1#",
                  style: TextStyle(color: codesColor),
                ),
                const Spacer(),
                Image.asset(
                  "images/img/copy.png",
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Divider(
                height: 1,
              ),
            ),
            const Text(
              "Xizmatni o'chirsh",
              style: TextStyle(
                color: Color(0xFF333333),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  " *321*0#",
                  style: TextStyle(color: codesColor),
                ),
                const Spacer(),
                Image.asset(
                  "images/img/copy.png",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
