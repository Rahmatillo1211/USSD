import 'package:flutter/material.dart';

class InernetniFaollashtirishCardWidget2 extends StatelessWidget {
  final String textt;
  final String tekskod;
  final Color codeColor;

  const InernetniFaollashtirishCardWidget2({
    super.key,
    required this.textt,
    required this.tekskod,
    required this.codeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14.0,
          vertical: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textt,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  tekskod,
                  style:  TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: codeColor,
                  ),
                ),
                const Spacer(),
                Image.asset("images/img/copy.png")
              ],
            )
          ],
        ),
      ),
    );
  }
}
