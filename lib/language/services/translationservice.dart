import 'package:final_year_project/language/english.dart';
import 'package:final_year_project/language/malay.dart';
import 'package:final_year_project/language/mandarin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  //static Locale? get locale => Locale('zh', 'Hans');
  static final fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'zh_Hans': zh_Hans,
        'hi_IN': hi_IN,
      };
}