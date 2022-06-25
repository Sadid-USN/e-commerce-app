import 'package:e_encommerce/view/screen/auth/auth_button.dart';
import 'package:e_encommerce/view/screen/auth/sign_in_and_sign_up_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/app_conroller.dart';
import '../../../core/constant/colors.dart';
import '../../widget/filds.dart';
import 'login_page.dart';

class ResetPaswwordPage extends StatelessWidget {
  const ResetPaswwordPage({Key? key}) : super(key: key);
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
          'Reset Paswword',
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
          // const LogoAuth(
          //   image: 'assets/images/forgot_pas.png',
          //   height: 180,
          // ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Text(
                'Please enter a new password',
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
              controller: controller.newPassword,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.lock_outline,
                  color: Colors.grey.shade400,
                ),
              ),
              label: 'Password',
              hintText: 'Enter a new Password',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Filds(
              controller: controller.repeatNewPassword,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.lock_outline,
                  color: Colors.grey.shade400,
                ),
              ),
              label: 'Password',
              hintText: 'Repeat Password',
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          AuthButton(
            onPressed: () {},
            text: 'Save',
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
