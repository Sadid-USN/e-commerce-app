import 'package:e_encommerce/core/constant/routes.dart';
import 'package:e_encommerce/mybinding.dart';
import 'package:e_encommerce/view/screen/language_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/localization/locale_controller.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await intiServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocalController localController = Get.put(LocalController());
    return GetMaterialApp(
      locale: localController.defaultLanguge,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'E-commerce',
      theme: localController.appTheme,
      routes: routes,
      initialBinding: MyBinding(),
      home:
          //const Test(),

          const LanguagePage(),
    );
  }
}
