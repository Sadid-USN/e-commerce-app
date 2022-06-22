import 'package:e_encommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? defaultLanguge;
  MyServices myServices = Get.find();

  changeLang(String langCode) {
    Locale locale = Locale(langCode);

    myServices.sharedPreferences.setString('lang', langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedLang = myServices.sharedPreferences.getString('lang');
    if (sharedLang == 'uk') {
      defaultLanguge = const Locale('uk');
    } else if (sharedLang == 'en') {
      defaultLanguge = const Locale('en');
    } else if (sharedLang == 'ar') {
      defaultLanguge = const Locale('ar');
    } else if (sharedLang == 'ru') {
      defaultLanguge = const Locale('ru');
    } else {
      defaultLanguge = const Locale('en');
      defaultLanguge = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
