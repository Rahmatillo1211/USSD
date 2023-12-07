// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:flutter_application_1/screens/beeline/operator_boglanish.dart';
import 'package:flutter_application_1/screens/beeline/restart.dart';
import 'package:flutter_application_1/screens/beeline/tarif_rejalar.dart';
import 'package:flutter_application_1/screens/beeline/ussd_codes.dart';
import 'package:flutter_application_1/screens/beeline/xizmatlar.dart';
import 'package:flutter_application_1/screens/beeline/xizmatni_faollashtirish.dart';
import 'package:flutter_application_1/screens/mobiuz/internet_faollashtirish.dart';
import 'package:shared_preferences/shared_preferences.dart';

SaveData(String key, String value) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString(key, value);
}

String? savedData;
Getdata(String key) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  savedData = pref.getString(key);
}

List<Map<String, dynamic>> carouselItems = [
  {
    'imagePath': 'images/img/ucell.png',
    'cardColor': const Color(0xFF652D86),
  },
  {
    'imagePath': 'images/img/mobiuz.png',
    'cardColor': const Color.fromARGB(255, 179, 0, 12),
  },
  {
    'imagePath': 'images/img/beeline.png',
    'cardColor': const Color(0xFFFFBE00),
  },
  {
    'imagePath': 'images/img/uztelecom.png',
    'cardColor': const Color(0xFF01B4FF),
  },
];

List<Map<String, dynamic>> beelineButtonList = [
  {
    "image": "images/img/wallet.png",
    "name": "Balans va qoldiqlar",
    "page": const BeeTarifRejalarScreen()
  },
  {
    "image": "images/img/replace.png",
    "name": "Restart xizmati",
    "page": const RestartXizmatiScreen()
  },
  {
    "image": "images/img/copy2.png",
    "name": "Tarif rejalar",
    "page": const BeeTarifRejalarScreen()
  },
  {
    "image": "images/img/qavs.png",
    "name": "USSD kodlar",
    "page": const BeeUssdCodes(),
  },
  {
    "image": "images/img/xizmatlar.png",
    "name": "Xizmatlar",
    "page": const XizmatlarScreen()
  },
  {
    "image": "images/img/quloqchin.png",
    "name": "Operator bilan bog’lanish",
    "page": const OperatorBilanBoglanishScreen()
  },
];
// ignore: 
List<Map<String, dynamic>> beeUssdButtonList = [
  {
    "codeTitle": "Balansni tekshirish",
    "ussdCode": " *102#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Tungi MB qoldig’ini tekshirish",
    "ussdCode": " *109#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Kontent xizmatlarni o’chirish",
    "ussdCode": " *115#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Digital obunalarni o’chirish",
    "ussdCode": " *116#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Raqamni aniqlash",
    "ussdCode": " *148#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "To'lov sanasi",
    "ussdCode": " *202#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "SMS qoldig'ini tekshirish",
    "ussdCode": " *105#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Daqiqalar qoldig'i",
    "ussdCode": " *106#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Mening raqamlarim",
    "ussdCode": " *303#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "MB qoldig’ini tekshirish",
    "ussdCode": " *103#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Qarz olishni taqiqlash",
    "ussdCode": " *142#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "4G paket qoldig'ini tekshirish",
    "ussdCode": " *120#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Tarif rejani tekshirish",
    "ussdCode": " *110*05#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Xizmatlarning menyusi",
    "ussdCode": " *111#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Telefon IMEI kodini bilish",
    "ussdCode": " **#06#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Qo'shimcha xizmatlarni tekshirish",
    "ussdCode": " *110*09#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Avtomatik internet sozlamalari",
    "ussdCode": " *22#",
    "textColor": const Color(0xFFFFBE00),
  },
  {
    "codeTitle": "Kutish rejimini yoqish",
    "ussdCode": "*43#",
    "textColor": const Color(0xFFFFBE00),
  },
];

List<Map<String, String>> beeBarakaliList = [
  {
    "image": "images/img/globs.png",
    "name": "Balans va qoldiqlar",
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
  {"image": "images/img/call.png", "name": "Daqiqalar", "name2": "Cheksiz"},
  {
    "image": "images/img/tv.png",
    "name": "Beeline TV",
    "name2": "IVI, Telekanallar"
  },
  {"image": "images/img/email.png", "name": "SMS", "name2": "10 000 SMS"},
];
List<Map<String, dynamic>> beeInternetPaketlarList = [
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const MobiInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const MobiInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const MobiInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const MobiInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const MobiInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const MobiInternetniFaollashitirishScreen()
  },
];
List<Map<String, dynamic>> beeXizmatlarButtonList = [
  {
    "name": "Qo'llab yubor",
    "page": const XizmatniFaollashtirishScreen(),
  },
  {
    "name": "Chaqiruvni kutish",
    "page": const XizmatniFaollashtirishScreen(),
  },
  {
    "name": "Konferen aloqa",
    "page": const XizmatniFaollashtirishScreen(),
  },
  {
    "name": "Menga qo'ng'iroq qiling",
    "page": const XizmatniFaollashtirishScreen(),
  },
  {
    "name": "Qabul qilinmagan qo'ngiroq",
    "page": const XizmatniFaollashtirishScreen(),
  },
  {
    "name": "Yashirin qo'ng'iroq",
    "page": const XizmatniFaollashtirishScreen(),
  },
  {
    "name": "Kontent xizmatlarni o'chirish",
    "page": const XizmatniFaollashtirishScreen(),
  },
  {
    "name": "Foydali almashinuvi",
    "page": const XizmatniFaollashtirishScreen(),
  },
];
List<Map<String, String>> beeoperatorBilanBoglanishList = [
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
