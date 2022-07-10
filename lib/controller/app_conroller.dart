import 'package:e_encommerce/core/constant/colors.dart';
import 'package:e_encommerce/core/constant/route_names.dart';
import 'package:e_encommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

abstract class MyController extends GetxController {
  checkCode();
  late String verifyCode;
  goToLogin();
  goTosuccessResetPaswword();
  nextPage();
  onPageChanged(int index);
  late PageController pageController;
  int currentPage = 0;
  //
  skip();
  checkEmail();
  login();
  signUp();

  exitDialog();

  showPassword();
}

class AppController extends MyController {
  bool isShowPassword = true;

  GlobalKey<FormState> signinFormstate = GlobalKey<FormState>();
  GlobalKey<FormState> signUpFormstate = GlobalKey<FormState>();
  GlobalKey<FormState> forgotPasswordFormstate = GlobalKey<FormState>();
  // New Password
  late TextEditingController newPassword;
  late TextEditingController repeatNewPassword;
  // Controller for ForgotPasswordPage
  late TextEditingController forgotpasswordEmail;

  // Controller for Login
  late TextEditingController email;
  late TextEditingController password;

  // Controller for Sign Up
  late TextEditingController signUpEmail;
  late TextEditingController signUppassword;
  late TextEditingController userName;
  late TextEditingController phone;

  @override
  login() {
    // var formdata = formstate.currentState;
    if (signinFormstate.currentState!.validate()) {
      print('Validate');
    } else {
      print('not Valid');
    }
  }

  @override
  signUp() {
    if (signUpFormstate.currentState!.validate()) {
      Get.offNamed(AppRouteNames.verifySignUp);
      print('Validate');
    } else {
      print('not Valid');
    }
  }

  @override
  checkEmail() {
    if (forgotPasswordFormstate.currentState!.validate()) {
      Get.offNamed(AppRouteNames.verificationCode);
      print('Validate');
    } else {
      print('not Valid');
    }
  }

  @override
  void onInit() {
    newPassword = TextEditingController();
    repeatNewPassword = TextEditingController();
    //
    pageController = PageController();
    //
    signUpEmail = TextEditingController();
    signUppassword = TextEditingController();
    userName = TextEditingController();
    phone = TextEditingController();
    //
    email = TextEditingController();
    password = TextEditingController();
    //
    forgotpasswordEmail = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    //
    newPassword.dispose();
    repeatNewPassword.dispose();
    signUpEmail.dispose();
    signUppassword.dispose();
    userName.dispose();
    phone.dispose();

    //
    email.dispose();
    password.dispose();
    //
    forgotpasswordEmail.dispose();
    super.dispose();
  }

  @override
  nextPage() {
    currentPage++;
    if (currentPage > onBoardingModelist.length - 1) {
      Get.offNamed(AppRouteNames.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  @override
  skip() {
    currentPage = 4;

    if (currentPage > onBoardingModelist.length - 1) {
      Get.offNamed(AppRouteNames.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  @override
  onPageChanged(index) {
    currentPage = index;

    update();
  }

  @override
  checkCode() {
    Get.offNamed(AppRouteNames.login);
  }

  @override
  goToLogin() {
    Get.offNamed(AppRouteNames.login);
  }

  @override
  goTosuccessResetPaswword() {
    Get.offNamed(AppRouteNames.successResetPaswword);
  }

  @override
  Future<bool> exitDialog() {
    Get.defaultDialog(
      buttonColor: signinButtonColor,
      // contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      textConfirm: 'Exit',
      confirmTextColor: whiteColor,
      onConfirm: () {
        SystemNavigator.pop();
      },

      onCancel: () {},
      title: "",
      middleText: "Are you sure you want to go out?",
      backgroundColor: whiteColor,
      titleStyle: const TextStyle(color: titleColor),
      middleTextStyle: const TextStyle(color: titleColor),
    );
    return Future.value(true);
  }

  @override
  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  // @override
  // goToSuccessResetPassword() {
  //   Get.toNamed(AppRouteNames.successResetPaswword);
  // }
}
