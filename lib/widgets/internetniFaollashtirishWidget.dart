// ignore: file_names
import 'package:flutter/material.dart';

class InternetniFaollashtirishCardWidget extends StatelessWidget {
  final Color narxColor;
  final Color gbColor;
  const InternetniFaollashtirishCardWidget({
    super.key,
    required this.narxColor, required this.gbColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 239,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "50 GB",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: gbColor,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF6F6F6),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFfF6F6F6),
                  ),
                  child: Center(
                    child: Image.asset("images/img/globs.png"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Ajratilgan trafik",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF5A5A5A),
                  ),
                ),
                const Spacer(),
                const Text(
                  "50 GB",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF6F6F6),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFfF6F6F6),
                  ),
                  child: Center(
                    child: Image.asset("images/img/soat.png"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Amal qilish muddati",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF5A5A5A),
                  ),
                ),
                const Spacer(),
                const Text(
                  "30 kun",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF6F6F6),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFfF6F6F6),
                  ),
                  child: Center(
                    child: Image.asset("images/img/wallet.png"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Paket narxi",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF5A5A5A),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: narxColor,
                  ),
                  child: const Center(
                    child: Text(
                      "85 000 so'm",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
