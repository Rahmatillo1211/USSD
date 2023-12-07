import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/beeline/muvofaqqiyatli.dart';
import 'package:flutter_application_1/widgets/internetniFaollashtirishWidget2.dart';
import 'package:flutter_application_1/widgets/restartCardWidget.dart';

class UcellRestartXizmatiScreen extends StatelessWidget {
  const UcellRestartXizmatiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        title: const Center(
          child: Text(
            "Restart Xizmati",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color(0xFF652D86),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.share,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: _buildBody(context),
    );
  }

  _buildBody(context) {
    return Stack(
      children: [
        const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                RestartXizmatiWIdget(
                  restartColor: Color(0xFF652D86),
                ),
                SizedBox(
                  height: 12,
                ),
                InernetniFaollashtirishCardWidget2(
                  textt: 'Xizmatni faollashtirish',
                  tekskod: ' *555#F',
                  codeColor: Color(0xFF652D86),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tavsif",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 8,
                        ),
                        child: Text(
                          "“Sof” va “Doimiy” tizimlari tarif rejalari abonentlari uchun “Sizga qo‘ng‘iroq qilishdi” xizmati 01.07.2023-y.dan 31.12.2023-y.gacha bo‘lgan davrda bepul asosda taqdim etiladi.“Sizga qo‘ng‘iroq qilishdi” xizmatining 30 kunlik opsiyasi “Sof” va “Doimiy” tizimlari tarif rejalarida amal qilmaydi."
                          "30 kunlik “Sizga qo‘ng‘iroq qilishdi” xizmati “Ovozli pochta”, “Dinamik ovozli pochta”, «Barcha uchun ovozli pochta» va kunlik “Sizga qo‘ng‘iroq qilishdi” xizmati bilan bir vaqtda ishlamaydi.Shunday qilib, 30 kunlik “Sizga qo‘ng‘iroq qilishdi” xizmatini faollashtirish uchun oldin yuqoridigilarni o‘chirishingiz kerak.30 kunlik "
                          "“Sizga qo‘ng‘iroq qilishdi” xizmati avtomatik uzaytirish funksiyasiga ega emas, shuning uchun, foydalanish muddati tugaganidan so‘ng xizmat o‘chiriladi.Shuni ta'kidlash kerakki, bloklangan abonent holatida ham o'tkazib yuborilgan qo'ng'iroqlar haqida SMS-xabar olish mumkin.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 2,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 87,
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              gradient: const LinearGradient(
                colors: [Color(0xFFF6F6F6), Colors.white],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: const Color(0xFF652D86),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    _showMyDialog(context);
                  },
                  child: const Center(
                    child: Text(
                      "Xizmatni faollashtirish",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _showMyDialog(BuildContext ctx) {
    return showDialog(
      context: ctx,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(
            child: Text(
              "Xizmatni faollashtirish",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                height: 3,
              ),
            ),
          ),
          content: Container(
            width: double.infinity,
            height: 206.33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                const Text(
                  "Siz “RESTART” xizmatini "
                  "\ffaollashtirmoqchisiz."
                  "\fTarif rejangiz asosida to’lov yechiladi",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Bekoq qilish",
                        style: TextStyle(
                          color: Color(0xFFFA2D2D),
                        ),
                      ),
                    ),
                    const VerticalDivider(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MuvofaqqiyatliFaollashtirishScreen(
                              buttonColor: Color(0xFF652D86),
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        "Faollashtirish",
                        style: TextStyle(
                          color: Color(0xFF0073FF),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
