import 'package:e_encommerce/controller/app_conroller.dart';
import 'package:e_encommerce/view/screen/auth/auth_button.dart';
import 'package:e_encommerce/view/screen/auth/logo_auth.dart';
import 'package:e_encommerce/view/screen/auth/sign_in_and_sign_up_text.dart';
import 'package:e_encommerce/view/screen/auth/verification_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';
import '../../widget/filds.dart';
import 'login_page.dart';

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
          'Forgot Password',
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
          const LogoAuth(
            image: 'assets/images/forgot_pas.png',
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
                'Please Enter your email to recive a verification code',
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
            child: Filds(
              controller: controller.forgotpasswordEmail,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.email_outlined,
                  color: Colors.grey.shade400,
                ),
              ),
              label: 'Email',
              hintText: 'Enter your email',
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
              Get.to(() => const VerificationPage());
            },
            text: 'Send',
            height: 50,
            width: 150,
          ),
          const SizedBox(
            height: 30,
          ),
          SignInAndSignUpText(
            textAlignCenter: TextAlign.center,
            textone: 'back to ',
            texttwo: 'Sign In',
            onTap: () {
              Get.to(() => const LoginPage());
            },
          )
        ],
      ),
    );
  }
}
