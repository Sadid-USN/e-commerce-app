import 'package:e_encommerce/controller/app_conroller.dart';
import 'package:e_encommerce/view/screen/auth/auth_button.dart';
import 'package:e_encommerce/view/screen/auth/forget_password_page.dart';
import 'package:e_encommerce/view/screen/auth/sign_in_and_sign_up_text.dart';
import 'package:e_encommerce/view/screen/auth/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/colors.dart';
import '../../widget/filds.dart';
import 'logo_auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
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
          const LogoAuth(
            image: 'assets/images/logo.png',
            height: 150,
          ),
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
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Filds(
              controller: controller.email,
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
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Filds(
              controller: controller.password,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.lock_outlined,
                  color: Colors.grey.shade400,
                ),
              ),
              label: 'Password',
              hintText: 'Enter your password',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: InkWell(
              focusColor: signinButtonColor,
              onTap: () {
                Get.to(() => const ForgetPasswordPage());
              },
              child: Text(
                'Forgot Password',
                textAlign: TextAlign.end,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: forgotPasswordColor, fontSize: 16.0),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          AuthButton(
            height: 50,
            width: 200,
            onPressed: () {},
            text: 'Sign In',
          ),
          const SizedBox(
            height: 30,
          ),
          SignInAndSignUpText(
              textAlignCenter: TextAlign.center,
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
