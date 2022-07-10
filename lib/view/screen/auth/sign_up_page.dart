import 'package:e_encommerce/controller/app_conroller.dart';
import 'package:e_encommerce/core/constant/route_names.dart';
import 'package:e_encommerce/core/functions/validator.dart';
import 'package:e_encommerce/view/screen/auth/auth_button.dart';
import 'package:e_encommerce/view/screen/auth/sign_in_and_sign_up_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';
import '../../widget/my_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
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
            '19'.tr,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Colors.grey.shade600,
                  fontSize: 20.0,
                ),
          ),
          centerTitle: true,
        ),
        body: Form(
          key: controller.signUpFormstate,
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
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
                    '26'.tr,
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
                    return validator(val!, 4, 32, 'Username');
                  },
                  controller: controller.userName,
                  suffixIcon: Icons.person_outline,
                  label: '22'.tr,
                  hintText: '25'.tr,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: MyField(
                  isNumber: false,
                  validator: (val) {
                    return validator(val!, 4, 32, 'Email');
                  },
                  controller: controller.signUpEmail,
                  suffixIcon: Icons.email_outlined,
                  label: '20'.tr,
                  hintText: '14'.tr,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: MyField(
                  isNumber: true,
                  validator: (val) {
                    return validator(val!, 12, 32, 'Phone');
                  },
                  controller: controller.phone,
                  suffixIcon: Icons.phone_outlined,
                  label: '23'.tr,
                  hintText: '24'.tr,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<AppController>(
                builder: ((controller) => Container(
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
                          return validator(val!, 6, 32, 'Phone');
                        },
                        controller: controller.signUppassword,
                        suffixIcon: controller.isShowPassword == false
                            ? Icons.lock_open
                            : Icons.lock,
                        label: '21'.tr,
                        hintText: '15'.tr,
                      ),
                    )),
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
                onPressed: () {
                  controller.signUp();
                },
                text: '19'.tr,
              ),
              const SizedBox(
                height: 30,
              ),
              SignInAndSignUpText(
                textAlignCenter: TextAlign.center,
                textone: 'account'.tr,
                texttwo: '11'.tr,
                onTap: () {
                  Get.offNamed(AppRouteNames.login);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
