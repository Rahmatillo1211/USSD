import 'dart:ui';

import 'package:flutter_application_1/screens/mobiuz/operator_boglanish.dart';
import 'package:flutter_application_1/screens/mobiuz/restart.dart';
import 'package:flutter_application_1/screens/mobiuz/tarif_rejalar.dart';
import 'package:flutter_application_1/screens/mobiuz/xizmatlar.dart';
import 'package:flutter_application_1/screens/mobiuz/xizmatni_faollashtirish.dart';
import 'package:flutter_application_1/screens/ucell/internetni_faollashtirish.dart';
import 'package:flutter_application_1/screens/mobiuz/ussd_codes.dart';

List<Map<String, dynamic>> mobiButtonList = [
  {
    "image": "images/img/wallet.png",
    "name": "Balans va qoldiqlar",
    "page": const MobiTarifRejalarScreen()
  },
  {
    "image": "images/img/replace.png",
    "name": "Restart xizmati",
    "page": const MobiRestartXizmatiScreen()
  },
  {
    "image": "images/img/copy2.png",
    "name": "Tarif rejalar",
    "page": const MobiTarifRejalarScreen()
  },
  {
    "image": "images/img/qavs.png",
    "name": "USSD kodlar",
    "page": const MobiUssdCodes(),
  },
  {
    "image": "images/img/xizmatlar.png",
    "name": "Xizmatlar",
    "page": const MobiXizmatlarScreen()
  },
  {
    "image": "images/img/quloqchin.png",
    "name": "Operator bilan bog’lanish",
    "page": const MobiOperatorBilanBoglanishScreen()
  },
];
// ignore: non_constant_identifier_names
List<Map<String, dynamic>> mobiUssdButtonList = [
  {
    "codeTitle": "Tolov sanasini tekshirish",
    "ussdCode": " *200#",
    "textColor": const Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "Megabayt qoldig’ini tekshirish",
    "ussdCode": " *107#",
    "textColor": const  Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "Kontent xizmatlarni o’chirish",
    "ussdCode": " *350*1#",
    "textColor": const  Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "Men kimman",
    "ussdCode": " *450#",
    "textColor": const Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "Tarif rejani o'zgartirish",
    "ussdCode": " *120#",
    "textColor": const  Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "Mening xizmatlarim",
    "ussdCode": " *401#",
    "textColor": const  Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "Restart",
    "ussdCode": " *222#",
    "textColor": const  Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "Mening raqamlarim",
    "ussdCode": " *360#",
    "textColor": const  Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "USSD menyu",
    "ussdCode": " *111#",
    "textColor": const  Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "Telefon IMEI kodini bilish",
    "ussdCode": " *#06#",
    "textColor": const  Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "Yagona hisob",
    "ussdCode": " *900#",
    "textColor": const  Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "Limitlar qoldig'ini tekshirish",
    "ussdCode": " *103#",
    "textColor": const  Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "SMS tafsilotlar",
    "ussdCode": " *400#",
    "textColor": const Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "\"Mobil avans\" qoldig'ini tekshirish",
    "ussdCode": " *111#",
    "textColor": const  Color.fromARGB(255, 179, 0, 12),
  },
  {
    "codeTitle": "Kutish rejimini yoqish",
    "ussdCode": " *43#",
    "textColor": const  Color.fromARGB(255, 179, 0, 12),
  },
];

List<Map<String, String>> mobibarakaliList = [
  {
    "image": "images/img/globs.png",
    "name": "Internet",
    "name2": "6GB"
  },
  {
    "image": "images/img/internet.png",
    "name": "Ijtimoiy tarmoqlar uchun*",
    "name2": "20GB"
  },
  {
    "image": "images/img/moon.png",
    "name": "Tungi internet",
    "name2": "100 000 MB"
  },
  {
    "image": "images/img/call.png",
    "name": "Daqiqalar",
    "name2": "Cheksiz",
  },
  {
    "image": "images/img/email.png",
    "name": "SMS",
    "name2": "10 000 SMS",
  },
];
List<Map<String, dynamic>> ucellinternetPaketlarList = [
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const UcellInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const UcellInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const UcellInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const UcellInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const UcellInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const UcellInternetniFaollashitirishScreen()
  },
];
List<Map<String, dynamic>> mobiXizmatlarButtonList = [
  {
    "name": "Qo'llab yubor",
    "page": const MobiXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Chaqiruvni kutish",
    "page": const MobiXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Konferen aloqa",
    "page": const MobiXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Menga qo'ng'iroq qiling",
    "page": const MobiXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Qabul qilinmagan qo'ngiroq",
    "page": const MobiXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Yashirin qo'ng'iroq",
    "page": const MobiXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Kontent xizmatlarni o'chirish",
    "page": const MobiXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Foydali almashinuvi",
    "page": const MobiXizmatniFaollashtirishScreen(),
  },
];
List<Map<String, String>> ucelloperatorBilanBoglanishList = [
  {
    "image": "images/img/call.png",
    "text1": "0611",
    "text2": "O’zbekiston ichidagi Beeline abonentlari uchun",
  },
  {
    "image": "images/img/call.png",
    "text1": "0777",
    "text2": "Status tarif rejalari abonentlari uchun",
  },
  {
    "image": "images/img/call.png",
    "text1": "+998 (90) 185 00 55",
    "text2": "Barcha abonentlar uchun",
  },
  {
    "image": "images/img/globs.png",
    "text1": "www.beeline.uz",
    "text2": "“UZTELECOM” veb-sahifasi",
  },
  {
    "image": "images/img/kuchukcha.png",
    "text1": "oso@beeline.uz",
    "text2": "Mijozlar uchun elektron pochta manzili",
  },
  {
    "image": "images/img/bot.png",
    "text1": "@BeelineUzbBot",
    "text2": "Beeline telegram-bot",
  },
];