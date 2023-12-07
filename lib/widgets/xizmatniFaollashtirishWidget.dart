import 'package:flutter/material.dart';

class XizmatniFaollashtirishWidget extends StatelessWidget {
  final Color narxColor;
  const XizmatniFaollashtirishWidget({super.key, required this.narxColor});

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
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: Text(
                "Sizga qo'ng'iroq qilishadi",
                style: TextStyle(
                  color: Color(0xFF652D86),
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
              " O‘tkazib yuborilgan qo‘ng‘iroqlar haqida doimo xabardor bo‘ling.",
              style: TextStyle(
                color: Color(0xFF858585),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFF6F6F6),
                  ),
                  child: Center(
                    child: Image.asset("images/img/wallet.png"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Xizmat narxi",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.grey,
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
                      "240 so'm/kun",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
