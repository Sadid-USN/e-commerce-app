import 'package:e_encommerce/core/constant/colors.dart';
import 'package:e_encommerce/core/constant/route_names.dart';
import 'package:e_encommerce/view/screen/auth/auth_button.dart';
import 'package:e_encommerce/view/screen/auth/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                '34'.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 20,
              ),
              const LogoAuth(
                image: 'assets/animation/succesfullresetpassword.json',
                width: double.infinity,
                height: 250,
              ),
              const SizedBox(
                height: 40,
              ),
              const Spacer(
                flex: 3,
              ),
              AuthButton(
                onPressed: () {
                  Get.offAllNamed(AppRouteNames.login);
                },
                text: '11'.tr,
                height: 50,
                width: double.infinity,
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
