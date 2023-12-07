// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:flutter_application_1/screens/uzmobile/internetni_faollashtirish.dart';
import 'package:flutter_application_1/screens/uzmobile/operator_boglanish.dart';
import 'package:flutter_application_1/screens/uzmobile/restart.dart';
import 'package:flutter_application_1/screens/uzmobile/tarif_rejalar.dart';
import 'package:flutter_application_1/screens/uzmobile/ussd_codes.dart';
import 'package:flutter_application_1/screens/uzmobile/xizmatlar.dart';
import 'package:flutter_application_1/screens/uzmobile/xizmatni_faollshtirish.dart';
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

List<Map<String, dynamic>> uzmobileButtonList = [
  {
    "image": "images/img/wallet.png",
    "name": "Balans va qoldiqlar",
    "page": const UzmobileTarifRejalarScreen()
  },
  {
    "image": "images/img/replace.png",
    "name": "Restart xizmati",
    "page": const UzmobileRestartXizmatiScreen()
  },
  {
    "image": "images/img/copy2.png",
    "name": "Tarif rejalar",
    "page": const UzmobileTarifRejalarScreen()
  },
  {
    "image": "images/img/qavs.png",
    "name": "USSD kodlar",
    "page": const UzmobileUssdCodes(),
  },
  {
    "image": "images/img/xizmatlar.png",
    "name": "Xizmatlar",
    "page": const UzmobileXizmatlarScreen(),
  },
  {
    "image": "images/img/quloqchin.png",
    "name": "Operator bilan bog’lanish",
    "page": const UzmobileOperatorBilanBoglanishScreen(),
  },
];
// ignore:
List<Map<String, dynamic>> uzmobileUssdButtonList = [
  {
    "codeTitle": "Balansni tekshirish",
    "ussdCode": " *102#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Tungi MB qoldig’ini tekshirish",
    "ussdCode": " *109#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Kontent xizmatlarni o’chirish",
    "ussdCode": " *115#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Digital obunalarni o’chirish",
    "ussdCode": " *116#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Raqamni aniqlash",
    "ussdCode": " *148#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "To'lov sanasi",
    "ussdCode": " *202#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "SMS qoldig'ini tekshirish",
    "ussdCode": " *105#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Daqiqalar qoldig'i",
    "ussdCode": " *106#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Mening raqamlarim",
    "ussdCode": " *303#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "MB qoldig’ini tekshirish",
    "ussdCode": " *103#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Qarz olishni taqiqlash",
    "ussdCode": " *142#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "4G paket qoldig'ini tekshirish",
    "ussdCode": " *120#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Tarif rejani tekshirish",
    "ussdCode": " *110*05#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Xizmatlarning menyusi",
    "ussdCode": " *111#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Telefon IMEI kodini bilish",
    "ussdCode": " **#06#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Qo'shimcha xizmatlarni tekshirish",
    "ussdCode": " *110*09#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Avtomatik internet sozlamalari",
    "ussdCode": " *22#",
    "textColor": const Color(0xFF01B4FF),
  },
  {
    "codeTitle": "Kutish rejimini yoqish",
    "ussdCode": "*43#",
    "textColor": const Color(0xFF01B4FF),
  },
];

List<Map<String, String>> uzmobileBarakaliList = [
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
List<Map<String, dynamic>> uzmobileInternetPaketlarList = [
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const UzmobileInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const UzmobileInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const UzmobileInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const UzmobileInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const UzmobileInternetniFaollashitirishScreen()
  },
  {
    "textgb": "1 GB",
    "textsum": "9 000 so'm",
    "textkun": "30 kun",
    "page2": const UzmobileInternetniFaollashitirishScreen()
  },
];
List<Map<String, dynamic>> uzmobileXizmatlarButtonList = [
  {
    "name": "Qo'llab yubor",
    "page": const UzmobileXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Chaqiruvni kutish",
    "page": const UzmobileXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Konferen aloqa",
    "page": const UzmobileXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Menga qo'ng'iroq qiling",
    "page": const UzmobileXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Qabul qilinmagan qo'ngiroq",
    "page": const UzmobileXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Yashirin qo'ng'iroq",
    "page": const UzmobileXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Kontent xizmatlarni o'chirish",
    "page": const UzmobileXizmatniFaollashtirishScreen(),
  },
  {
    "name": "Foydali almashinuvi",
    "page": const UzmobileXizmatniFaollashtirishScreen(),
  },
];
List<Map<String, String>> uzmobileOperatorBilanBoglanishList = [
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
