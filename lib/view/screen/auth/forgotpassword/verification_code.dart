import 'package:e_encommerce/view/screen/auth/forgotpassword/reset_password_page.dart';
import 'package:e_encommerce/view/screen/auth/sign_in_and_sign_up_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../core/constant/colors.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //AppController controller = Get.put(AppController());
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        automaticallyImplyLeading: true,
        title: Text(
          '41'.tr,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: Colors.grey.shade600,
                fontSize: 20.0,
              ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(
            height: 10,
          ),
          SignInAndSignUpText(
            textAlignCenter: TextAlign.center,
            textone: '42'.tr,
            texttwo: ' sadididibekov@gmail.com ',
            onTap: () {},
          ),
          const SizedBox(
            height: 40,
          ),
          OtpTextField(
            focusedBorderColor: signinButtonColor,
            disabledBorderColor: Colors.blueGrey,
            borderRadius: BorderRadius.circular(12),
            fieldWidth: 50,
            numberOfFields: 5,
            // borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              Get.to(() => const ResetPaswwordPage());
              // controller.goToResetPasswordPage();
            }, // end onSubmit
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
