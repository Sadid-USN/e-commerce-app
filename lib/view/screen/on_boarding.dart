import 'package:e_encommerce/controller/app_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/costom_button.dart';
import '../widget/dots_controller.dart';
import '../widget/onboarding_slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(AppController());
    return WillPopScope(
      onWillPop: controller.exitDialog,
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: SafeArea(
          child: Column(
            children: [
              const Expanded(
                flex: 3,
                child: OnBoardingSlider(),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    Spacer(),
                    DotsController(),
                    Spacer(),
                    CostomButton(),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
