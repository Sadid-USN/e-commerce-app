import 'package:e_encommerce/core/localization/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/route_names.dart';
import '../widget/lang_button.dart';

class LanguagePage extends GetView<LocalController> {
  const LanguagePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            Text(
              '1'.tr,
              style: Theme.of(context).textTheme.headline1,
            ),
            const Spacer(
              flex: 1,
            ),
            LangButton(
              // title: const Text('English'),
              trailing: const CircleAvatar(
                radius: 18,
                backgroundImage:
                    NetworkImage('https://wallpaperaccess.com/full/881331.jpg'),
              ),
              textButton: 'Arabic',
              onTap: () {
                controller.changeLang('ar');
                Get.toNamed(AppRouteNames.onBoarding);
              },
            ),
            LangButton(
              // title: const Text('English'),
              trailing: const CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhQSiXKLOx3H2qLLwdbLBVe_3-nbcG7FotYw&usqp=CAU'),
              ),
              textButton: 'English',
              onTap: () {
                controller.changeLang('en');
                Get.toNamed(AppRouteNames.onBoarding);
              },
            ),
            LangButton(
              //title: const Text('Український'),
              trailing: const CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv9eV0V45Ro8ppshr41xXi1skt5i9F7haQyA&usqp=CAU'),
              ),
              textButton: 'Український',
              onTap: () {
                controller.changeLang('uk');
                Get.toNamed(AppRouteNames.onBoarding);
              },
            ),
            LangButton(
              //title: const Text('Український'),
              trailing: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLx2q_P_w_PQvO1WXN04s_64piX2jSnvIaKQ&usqp=CAU'),
              ),
              textButton: 'Русский',
              onTap: () {
                controller.changeLang('ru');
                Get.toNamed(AppRouteNames.onBoarding);
              },
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
