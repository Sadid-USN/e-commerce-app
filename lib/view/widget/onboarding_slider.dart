import 'package:e_encommerce/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constant/colors.dart';
import '../../data/datasource/static/static.dart';

class OnBoardingSlider extends GetView<ImplementController> {
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
              Text(
                onBoardingModelist[index].title!,
                style: GoogleFonts.ptSerif(
                  textStyle: const TextStyle(
                    color: titleColor,
                  ),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Image.asset(
                onBoardingModelist[index].image!,
              ),
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
