import 'package:e_encommerce/controller/app_conroller.dart';
import 'package:e_encommerce/view/widget/skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/colors.dart';

class CostomButton extends GetView<AppController> {
  const CostomButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            controller.nextPage();
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 350,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: priveryColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0),
                ]),
            child: Text(
              '10'.tr,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Skip(),
      ],
    );
  }
}
