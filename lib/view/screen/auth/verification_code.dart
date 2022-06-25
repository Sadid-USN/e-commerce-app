import 'package:e_encommerce/view/screen/auth/sign_in_and_sign_up_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/app_conroller.dart';
import '../../../core/constant/colors.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);
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
          'Verification Code',
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
            textone: 'Please Enter the digital code sent to ',
            texttwo: 'sadididibekov@gmail.com',
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
            borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.goToResetPasswordPage();
            }, // end onSubmit
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          // AuthButton(
          //   onPressed: () {},
          //   text: 'Check',
          //   height: 50,
          //   width: 150,
          // ),
          const SizedBox(
            height: 30,
          ),
          // SignInAndSignUpText(
          //   textAlignCenter: TextAlign.center,
          //   textone: 'back to ',
          //   texttwo: 'previous page',
          //   onTap: () {
          //     Get.to(() => const ForgetPasswordPage());
          //   },
          // ),
        ],
      ),
    );
  }
}
