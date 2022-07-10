import 'package:e_encommerce/core/constant/app_theme.dart';
import 'package:e_encommerce/core/constant/colors.dart';
import 'package:e_encommerce/core/constant/route_names.dart';
import 'package:e_encommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? defaultLanguge;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;

  goToOnboarding() {
    Get.offNamed(AppRouteNames.onBoarding);
  }

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

  Future<bool> exitDialog() {
    Get.defaultDialog(
      buttonColor: signinButtonColor,
      // contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      textConfirm: 'Exit',
      confirmTextColor: whiteColor,
      onConfirm: () {
        SystemNavigator.pop();
      },

      onCancel: () {},
      title: "",
      middleText: "Are you sure you want to go out?",
      backgroundColor: whiteColor,
      titleStyle: const TextStyle(color: titleColor),
      middleTextStyle: const TextStyle(color: titleColor),
    );
    return Future.value(true);
  }
}
