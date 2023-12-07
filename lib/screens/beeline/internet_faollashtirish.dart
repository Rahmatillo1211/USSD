import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/internetniFaollashtirishWidget2.dart';
import 'package:flutter_application_1/widgets/internetniFaollashtirishWidget.dart';

class InternetniFaollashitirishScreen extends StatelessWidget {
  const InternetniFaollashitirishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Center(
            child: Text(
              "Internet paketlar",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
          backgroundColor: const Color(0xFFFFBE00),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color(0xFFF6F6F6),
        body: _buildBody(context),
      ),
    );
  }

  _buildBody(BuildContext context) {
    return Stack(
      children: [
        const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                InternetniFaollashtirishCardWidget(
                  narxColor: Color(0xFFF6F6F6),
                  gbColor: Color(0xFFF6F6F6),
                ),
                SizedBox(
                  height: 12,
                ),
                InernetniFaollashtirishCardWidget2(
                  textt: 'Faollashtirish kodi',
                  tekskod: '*100#',
                  codeColor: Color(0xFFFFBE00),
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
                          "Tarif reja yuridik va jismoniy shaxslar uchun amal qiladi"
                          "Tarif rejaga ulanish imkoniyati UZTELECOM sotuv va xizmat ko‘rsatish ofislarida mavjud."
                          "TR faqatgina yangi ulanish uchun mo‘ljallangan, TR dan/ga o‘tish mumkin emas."
                          "Ma’lumotlarni uzatish limiti kiruvchi va chiquvchi Internet/VPN-trafik uchun sarflanadi."
                          "Ma’lumotlarni uzatish limitidan oshib ketilsa, bir sessiya davomida haqiqatdan uzatilgan va olingan ma’lumotlar bo‘yicha narxlanadi."
                          "Malumot uzatish tezligi bino qurilish zichligi, hudud relyefi, hamda baza stansiyalarining bandlik darajasiga bogliq holda pasayishi holatlari kuzatilishi mumkin. "
                          "Aloqani vaqtinchalik uzulishi va yo‘qolishi holatlari tabiiy sabablarga yoki meteorologik o‘zgarishlar, quyosh faolligining oshishi, relef radiosignallarni akslantirishi tufayli yuzaga kelishi mumkin."
                          "Shartlar abonent UZMOBILE CDMA amal qilish zonasida bo‘lganida amal qiladi.",
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
                    backgroundColor: const Color(0xFFFFBE00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    _showMyDialog(context);
                  },
                  child: const Center(
                    child: Text(
                      "Paketni faollashtirish",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                )
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
              "Paketni faollashtirish",
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
                  "Siz “Sizga qo’n’giroq qilishdi” xizmatini"
                  "\fo’chirmoqchisiz."
                  "\fXizmat narxi: 0 so’m",
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
                        // Handle button press
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
