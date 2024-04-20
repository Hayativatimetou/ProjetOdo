

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/localization/ar_sa.dart';
import 'package:startup/localization/en_us.dart';
import 'package:startup/localization/fr_fr.dart';

class LocaleString extends Translations {

  static List locales = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'Français', 'locale': const Locale('fr', 'FR')},
    {'name': 'عربي', 'locale': const Locale('ar', 'SA')},
  ];

  static updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  static void updateLanguageAppBar(Locale locale) {
    Get.updateLocale(locale);
  }

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUS,
    'fr_FR': frFr,
    'ar_SA': arSA,
  };
}
