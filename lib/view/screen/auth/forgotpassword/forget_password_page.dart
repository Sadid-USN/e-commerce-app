import 'package:e_encommerce/controller/app_conroller.dart';
import 'package:e_encommerce/core/functions/validator.dart';
import 'package:e_encommerce/view/screen/auth/auth_button.dart';
import 'package:e_encommerce/view/screen/auth/logo_auth.dart';
import 'package:e_encommerce/view/screen/auth/sign_in_and_sign_up_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/colors.dart';
import '../../../widget/my_field.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(AppController());
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        automaticallyImplyLeading: true,
        title: Text(
          '16'.tr,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: Colors.grey.shade600,
                fontSize: 20.0,
              ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: controller.forgotPasswordFormstate,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const LogoAuth(
              image: 'assets/animation/forgotpassword.json',
              height: 180,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Text(
                  '31'.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey.shade500, fontSize: 18, height: 1.8),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: MyField(
                isNumber: false,
                validator: (val) {
                  return validator(val!, 4, 32, 'email');
                },
                controller: controller.forgotpasswordEmail,
                suffixIcon: Icons.email_outlined,
                label: '20'.tr,
                hintText: '14'.tr,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            AuthButton(
              onPressed: () {
                controller.checkEmail();

                // Get.to(() => const VerificationPage());
              },
              text: '45'.tr,
              height: 50,
              width: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            SignInAndSignUpText(
              textAlignCenter: TextAlign.center,
              textone: 'back'.tr,
              texttwo: '11'.tr,
              onTap: () {
                controller.goToLogin();
                Get.delete<AppController>();
              },
            )
          ],
        ),
      ),
    );
  }
}
