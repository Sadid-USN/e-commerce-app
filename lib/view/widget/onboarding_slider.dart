import 'package:e_encommerce/controller/app_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                style: Theme.of(context).textTheme.headline1,
              ),
              const Spacer(),
              Image.asset(
                onBoardingModelist[index].image!,
                height: 300,
              ),
              Text(
                onBoardingModelist[index].body!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          );
        });
  }
}
