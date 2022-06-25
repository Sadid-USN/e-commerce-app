import 'package:e_encommerce/core/constant/routes.dart';
import 'package:e_encommerce/view/screen/language_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constant/colors.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: GoogleFonts.ptSerif(
            textStyle: const TextStyle(
              color: titleColor,
              //fontFamily: 'Cairo',
            ),
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
          bodyText1: GoogleFonts.varta(
            textStyle:
                const TextStyle(color: bodyColor, fontWeight: FontWeight.w600),
            fontSize: 20,
            //fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      home:
          //const Test(),

          const LanguagePage(),
    );
  }
}
