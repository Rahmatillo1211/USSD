import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/mobiuz_constants.dart';
import 'package:flutter_application_1/widgets/tarifrejalarCardWidget.dart';

class MobiTarifRejalarScreen2 extends StatelessWidget {
  const MobiTarifRejalarScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        title: const Center(
          child: Text(
            "Tarif rejalar",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 179, 0, 12),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios, color: Colors.white,),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.share, color: Colors.white,),
          )
        ],
      ),
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                // height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 16,
                      ),
                      child: Container(
                        height: 379,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 4,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 15),
                              child: Text(
                                "Barakali 22",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 179, 0, 12),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: Divider(
                                height: 1,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            _buildBarakaGrid(mobibarakaliList),
                            const SizedBox(
                              height: 5,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.0,
                              ),
                              child: Divider(
                                height: 1,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Abonenet to'lovi",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF858585),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "22 000 so'm/oy",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        height: 95,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Tarifga o'tish",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF333333),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "*100#",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 179, 0, 12),
                                    ),
                                  ),
                                  const Spacer(),
                                  Image.asset("images/img/copy.png")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Padding(
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
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              "Oyiga 45 000 daqiqalik texnologik cheklov o‘rnatilgan. 45 000 daqiqadan so‘ng barcha chiquvchi qo‘ng‘iroqlar bloklanadi."
                              "Ushbu tarif rejasiga (TR) ulanish va boshqa tarif rejalariga o‘tish UZTELECOM sotuv va xizmat ko‘rsatish ofislarida, dilerlik xizmat ko‘rsatish joylarida, shuningdek, MyUZTELECOM mobil ilovasi orqali amalga oshiriladi."
                              "Resurslardan faqat shaxsiy hisobda yetarli miqdorda mablagʻlar boʻlganda foydalanish mumkin."
                              "Abonent to‘lovi (keyingi o‘rinlarda - AT) hisoblanishi abonent “faol” holatda bo‘lganda amalga oshiriladi. Agar abonent hisob raqamida yetarli miqdorda pul mablagʻlari bo‘lmaganligi sababli bloklangan bo‘lsa, AT to‘lov kiritilmagunga qadar hisoblanmaydi."
                              "Ushbu TR doirasida AT hisoblanishining boshlanishi yagona jadval bo‘yicha emas, balki har bir abonent uchun alohida hisob-kitob davri bo‘yicha aniq soniyaga qadar amalga oshiriladi. TR doirasida ATni yechib olish vaqti aniq belgilanmagan bo‘lib, xizmatlardan foydalanish imkoniyati taqdim etilgan vaqtga bog‘liq bo‘ladi."
                              "ATning hisob-kitob davri kalendar oyining 1-sanasiga bog‘lanmagan holda 1 (bir) oyni tashkil etadi va abonentga xizmatdan foydalanish imkoniyati taqdim etilgan sanadan boshlab hisoblanadi. Hisob-kitob sanasi abonentning hisob-kitob davri uchun ATni hisoblashdagi boshlang‘ich nuqtasi hisoblanadi."
                              "Misol uchun, abonent TRga 10-sanada ulangan bo‘lsa, u holda navbatdagi oylik AT keyingi oyning 10-sanasida abonentning shaxsiy hisob raqamida TR bo‘yicha AT uchun yetarli miqdorda pul mablag‘lari bo‘lgandagina yechib olinadi. Agarda abonent 31-avgust kuni ulangan bo‘lsa, u holda navbatdagi ATni yechib olishga urinish"
                              "30-sentabr kuni amalga oshiriladi."
                              "Limitlar TR bo‘yicha AT muvaffaqiyatli yechib olinganda taqdim etiladi va joriy hisob-kitob davri tugagunga qadar amal qiladi, TR bo‘yicha foydalanilmay qoldirilgan limitlar keyingi hisob-kitob davriga o‘tkazilmaydi."
                              "Xizmatlar limiti va AT masshtablashtirilmaydi."
                              " Masalan: Abonent UZTELECOM GSM tarmog‘iga 30-yanvar kuni ulanganda, AT yechib olinishi 28- yoki 29-fevral kuni (kalendar yiliga ko‘ra) amalga oshiriladi va hisob-kitob davri yakunida Abonent hisobida AT uchun yetarli miqdorda pul mablag‘lari bo‘lmasa, abonent raqami bloklanadi. Abonent tomonidan balans 5 yoki"
                              "10 kundan keyin to‘ldirilsa, abonent hisobidan AT to‘liq hajmda yechib olinadi,"
                              "TR doirasidagi xizmatning barcha limitlari keyingi oyda AT yechib olingunga qadar bir oy muddatga to‘liq hajmda taqdim etiladi, bunda, har oylik ATni yechib olish sanasi keyingi muvaffaqiyatli AT yechib olinadigan sanaga suriladi."
                              "Amaldagi TR “Barakali” tarif rejalari toʻplamidagi TRga o‘zgartirilganda, “Raqam ijarasi” xizmati yoqilgan bo‘lsa, xizmat uchun hisob-kitob davri yangi TR bo‘yicha keyingi davrdan boshlab abonent to‘lovini hisoblash davri bilan tenglashtiriladi."
                              "Barcha qo‘ng‘iroqlar so‘zlashuvning birinchi soniyasidan boshlab narxlanadi va to‘liq daqiqa sifatida yaxlitlanib, hisobga olinadi."
                              "To‘plamdagi barcha tarif rejalarida quyidagi xizmatlar mavjud: “Qabul qilinmagan qo‘ng‘iroq/Tarmoqda”, “Shaxsiy raqam uzatilishini taqiqlash”, “Tezkor o‘tkazmalar”, “Raqam ijarasi”, “Yashirin qo‘ng‘iroq”, “Restart”, “Qo‘llab yubor” xizmatlari, shuningdek, ulanish imkoniyati berilgan qo‘shimcha MB va SMS-paketlari."
                              "“Barakali” to‘plamidagi TRga quyidagi tarif rejalaridan o‘tish mumkin: “Milliy”, “Ishbilarmon”, “Flash”, “OnLime”, “Street Upgrade”, “Royal”, “Flash Upgrade”, “Aloqachi”, “Yoshlar”, “Oddiy 10”, “Street”, “Traffic”, “E’zoz”, “Constructor”, “Step”, “C 1”, “C 2”, “C 3”, “C 4”, “Salom”, “Salom plus”, “Komfort”, “UzMobile 1200”, “UzMobile 4000”, “UzMobile VIP”, “UNITS”, ”Bolajon”, “TA’LIM B2C”, “MAKTAB”, “VOLUNTEER”, “Ta’lim” tarif rejalaridan va “Barakali” toʻplamidagi tarif rejalaridan."
                              "“Barakali” TRdan quyidagi tarif rejalariga o‘tish mumkin: “UNITS”, “Aloqachi”, “C1”, “C2”, “C3”, “C4”, “TA’LIM B2C”, “MAKTAB”, “Milliy” va “Barakali” toʻplamidagi tarif rejalariga."
                              "TR toʻplami ichida boshqa tarif rejlariga o‘tish narxi - 4 200 so‘m."
                              "“VOLUNTEER”, “Milliy”, “Ishbilarmon”, “Flash”, “OnLime”, “Street Upgrade”, “Royal”, “Flash Upgrade”, “Aloqachi”, “Yoshlar”, “Oddiy 10”, “Street”, “C1”, “C2”, “C3”, “C4” tarif rejalaridan, “UNITS” toʻplamidagi tarif rejalaridan, “Bolajon”, “TA’LIM B2C”, “MAKTAB” va boshqa amaldagi tarif rejalaridan “Barakali” TRga o‘tish narxi - 4 200 so‘m."
                              "“Traffic”, “E’zoz”, “Constructor”, “Step”, “Salom”, “Salom plus”, “Komfort”, “UzMobile 1200”, “UzMobile 4000”, “UzMobile VIP”, “Ta’lim” tarif rejalaridan o‘tish bepul amalga oshiriladi.",
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
            ],
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
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.4),
              //     blurRadius: 4,
              //     offset: Offset(-2, 0  )
              //   ),
              // ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: const Color.fromARGB(255, 179, 0, 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    _showMyDialog(context);
                  },
                  child: const Center(
                    child: Text(
                      "Tarifga o'tish",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        color: Colors.white,
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

  _buildBarakaGrid(List<Map<String, String>> data) {
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = data[index];
        return TarifRejalarWidget(
          barakali_icon: item["image"] ?? "",
          barakali_text: item["name"] ?? "",
          barakali_text2: item["name2"] ?? "",
        );
      },
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
              "Xizmatni o'chirish",
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
