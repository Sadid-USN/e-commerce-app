import 'package:e_encommerce/view/screen/auth/auth_button.dart';
import 'package:e_encommerce/view/screen/auth/sign_in_and_sign_up_text.dart';
import 'package:e_encommerce/view/screen/auth/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/colors.dart';
import '../../widget/login_filds.dart';
import 'logo_auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        automaticallyImplyLeading: true,
        title: Text(
          'Sign In',
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
          const LogoAuth(),
          Center(
            child: Text(
              'Welcome Back',
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
                'Sign in with your email and password or continue with social media',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey.shade500, fontSize: 18, height: 1.8),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const LoginFilds(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text(
              'Forgot Password',
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: forgotPasswordColor, fontSize: 16.0),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          AuthButton(
            onPressed: () {},
            text: 'Sign In',
          ),
          const SizedBox(
            height: 30,
          ),
          SignInAndSignUpText(
              textone: 'Don\'t have an account? ',
              texttwo: 'Sign Up',
              onTap: () {
                Get.to(() => const SignUpPage());
              })
        ],
      ),
    );
  }
}
