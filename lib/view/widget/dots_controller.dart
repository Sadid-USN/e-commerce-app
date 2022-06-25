import 'package:e_encommerce/controller/app_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/colors.dart';
import '../../data/datasource/static/static.dart';

class DotsController extends StatelessWidget {
  const DotsController({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingModelist.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 4),
              duration: const Duration(milliseconds: 300),
              height: 6,
              width: controller.currentPage == index ? 20 : 6,
              decoration: BoxDecoration(
                  color: priveryColor, borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ],
      );
    });
  }
}
