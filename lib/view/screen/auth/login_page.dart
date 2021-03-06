import 'package:e_encommerce/controller/app_conroller.dart';
import 'package:e_encommerce/core/constant/route_names.dart';
import 'package:e_encommerce/core/functions/validator.dart';
import 'package:e_encommerce/view/screen/auth/auth_button.dart';
import 'package:e_encommerce/view/screen/auth/forgotpassword/forget_password_page.dart';
import 'package:e_encommerce/view/screen/auth/logo_auth.dart';
import 'package:e_encommerce/view/screen/auth/sign_in_and_sign_up_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/colors.dart';
import '../../widget/my_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(AppController());
    return WillPopScope(
      onWillPop: controller.exitDialog,
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 0.0,
          automaticallyImplyLeading: true,
          title: Text(
            '11'.tr,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Colors.grey.shade600,
                  fontSize: 20.0,
                ),
          ),
          centerTitle: true,
        ),
        body: Form(
          key: controller.signinFormstate,
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              const LogoAuth(
                image: 'assets/animation/login.json',
                height: 150,
              ),
              Center(
                child: Text(
                  '12'.tr,
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
                    '13'.tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey.shade500, fontSize: 18, height: 1.8),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: MyField(
                  isNumber: false,
                  validator: (val) {
                    return validator(val!, 5, 32, 'email');
                  },
                  controller: controller.email,
                  suffixIcon: Icons.email_outlined,
                  label: '20'.tr,
                  hintText: '14'.tr,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<AppController>(
                builder: (controller) => Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: MyField(
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    obscureText: controller.isShowPassword,
                    isNumber: false,
                    validator: (val) {
                      return validator(val!, 5, 32, 'password');
                    },
                    controller: controller.password,
                    suffixIcon: controller.isShowPassword == false
                        ? Icons.lock_open
                        : Icons.lock,
                    label: '21'.tr,
                    hintText: '15'.tr,
                  ),
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
                    '16'.tr,
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
                onPressed: () {
                  controller.login();
                },
                text: '11'.tr,
              ),
              const SizedBox(
                height: 30,
              ),
              SignInAndSignUpText(
                  textAlignCenter: TextAlign.center,
                  textone: '27'.tr,
                  texttwo: '19'.tr,
                  onTap: () {
                    Get.offNamed(AppRouteNames.signUp);
                    Get.delete<AppController>();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
