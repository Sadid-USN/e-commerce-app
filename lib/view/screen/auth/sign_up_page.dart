import 'package:e_encommerce/controller/app_conroller.dart';
import 'package:e_encommerce/view/screen/auth/auth_button.dart';
import 'package:e_encommerce/view/screen/auth/sign_in_and_sign_up_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';
import '../../widget/filds.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
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
          'Sign Up',
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
          Center(
            child: Text(
              'Welcome',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 25.0),
            ),
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
                'To Sign Up you need to enter your email and create a new password',
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
              controller: controller.userName,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.person_outline,
                  color: Colors.grey.shade400,
                ),
              ),
              label: 'Username',
              hintText: 'Enter your Username',
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
              controller: controller.signUpEmail,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.email_outlined,
                  color: Colors.grey.shade400,
                ),
              ),
              label: 'Email',
              hintText: 'Enter your Email',
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
              controller: controller.phone,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.email_outlined,
                  color: Colors.grey.shade400,
                ),
              ),
              label: 'Phone',
              hintText: 'Enter your Phone',
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
              controller: controller.signUppassword,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.email_outlined,
                  color: Colors.grey.shade400,
                ),
              ),
              label: 'Password',
              hintText: 'Enter your Password',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          AuthButton(
            height: 50,
            width: 200,
            onPressed: () {},
            text: 'Sign Up',
          ),
          const SizedBox(
            height: 30,
          ),
          SignInAndSignUpText(
            textAlignCenter: TextAlign.center,
            textone: 'Alredy have an account ',
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
