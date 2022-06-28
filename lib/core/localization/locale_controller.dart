import 'package:e_encommerce/core/constant/app_theme.dart';
import 'package:e_encommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? defaultLanguge;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;

  changeLang(String langCode) {
    Locale locale = Locale(langCode);

    myServices.sharedPreferences.setString('lang', langCode);
    appTheme = langCode == 'ar' ? themeEnglish : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedLang = myServices.sharedPreferences.getString('lang');
    if (sharedLang == 'en') {
      appTheme = themeEnglish;
      defaultLanguge = const Locale('en');
    } else if (sharedLang == 'ar') {
      appTheme = themeArabic;
      defaultLanguge = const Locale('ar');
    } else if (sharedLang == 'ru') {
      defaultLanguge = const Locale('ru');
    } else {
      defaultLanguge = const Locale('en');
      appTheme = themeEnglish;
      defaultLanguge = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
