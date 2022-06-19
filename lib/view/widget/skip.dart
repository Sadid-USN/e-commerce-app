import 'package:e_encommerce/controller/onboarding_controller.dart';
import 'package:e_encommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Skip extends GetView<ImplementController> {
  const Skip({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.skip();
      },
      child: const Text(
        'Skip',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: skipColor),
      ),
    );
  }
}
