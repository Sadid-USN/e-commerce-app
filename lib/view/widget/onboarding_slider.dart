import 'package:e_encommerce/controller/app_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../core/constant/colors.dart';
import '../../data/datasource/static/static.dart';

class OnBoardingSlider extends GetView<AppController> {
  const OnBoardingSlider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.onPageChanged(index);
        },
        itemCount: onBoardingModelist.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const Spacer(),
              // InkWell(
              //   onTap: () {
              //     Get.to(
              //       () => const LanguagePage(),
              //     );
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.only(right: 12),
              //     child: Image.asset(
              //       'assets/images/translate.png',
              //       height: 22,
              //       width: 22,
              //     ),
              //   ),
              // ),

              Text(
                onBoardingModelist[index].title!,
                style: GoogleFonts.ptSerif(
                  textStyle: const TextStyle(
                    color: titleColor,
                    //fontFamily: 'Cairo',
                  ),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const Spacer(),
              Lottie.asset(onBoardingModelist[index].image!,
                  animate: true, height: 250),

              Text(
                onBoardingModelist[index].body!,
                textAlign: TextAlign.center,
                style: GoogleFonts.varta(
                  textStyle: const TextStyle(
                      color: bodyColor, fontWeight: FontWeight.w600),
                  fontSize: 20,
                  //fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ],
          );
        });
  }
}
