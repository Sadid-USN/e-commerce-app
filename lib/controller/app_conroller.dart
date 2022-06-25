import 'package:e_encommerce/core/constant/route_names.dart';
import 'package:e_encommerce/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class MyController extends GetxController {
  goToSuccessResetPassword();
  goToResetPasswordPage();
  checkCode();
  late String verifyCode;
  nextPage();
  onPageChanged(int index);
  late PageController pageController;
  int currentPage = 0;
  //
  skip();
  checkEmail();
  login();
  signUp();
}

class AppController extends MyController {
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
  login() {}

  @override
  signUp() {}

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
  checkEmail() {}

  @override
  nextPage() {
    currentPage++;
    if (currentPage > onBoardingModelist.length - 1) {
      Get.offAllNamed(AppRouteNames.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  @override
  skip() {
    currentPage = 4;

    if (currentPage > onBoardingModelist.length - 1) {
      Get.offAllNamed(AppRouteNames.login);
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
  checkCode() {}

  @override
  goToResetPasswordPage() {
    Get.toNamed(AppRouteNames.resetPassword);
  }

  @override
  goToSuccessResetPassword() {
    Get.toNamed(AppRouteNames.successResetPaswword);
  }
}
