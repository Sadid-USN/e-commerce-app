import 'package:e_encommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/app_conroller.dart';

class Skip extends GetView<AppController> {
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
