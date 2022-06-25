import 'package:e_encommerce/core/constant/route_names.dart';
import 'package:e_encommerce/view/screen/auth/forget_password_page.dart';
import 'package:e_encommerce/view/screen/auth/reset_password_page.dart';
import 'package:e_encommerce/view/screen/auth/sign_up_page.dart';
import 'package:e_encommerce/view/screen/auth/success_reset_password.dart';
import 'package:e_encommerce/view/screen/auth/success_sign_up.dart';
import 'package:e_encommerce/view/screen/auth/verification_code.dart';
import 'package:e_encommerce/view/screen/on_boarding.dart';
import 'package:flutter/material.dart';
import '../../view/screen/auth/login_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // On Boarding
  AppRouteNames.onBoarding: (context) => const OnBoarding(),
  // Auth
  AppRouteNames.login: (context) => const LoginPage(),
  AppRouteNames.signUp: (context) => const SignUpPage(),
  AppRouteNames.forgotPassword: (context) => const ForgetPasswordPage(),
  AppRouteNames.verificationCode: (context) => const VerificationPage(),
  AppRouteNames.resetPassword: (context) => const ResetPaswwordPage(),
  // Success Auth pages
  AppRouteNames.successResetPaswword: (context) => const SuccessResetPaswword(),
  AppRouteNames.successSignUp: (context) => const SuccessSignUp(),
};
