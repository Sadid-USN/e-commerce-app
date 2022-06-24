import 'package:e_encommerce/core/constant/route_names.dart';
import 'package:e_encommerce/view/screen/auth/sign_up_page.dart';
import 'package:e_encommerce/view/screen/on_boarding.dart';
import 'package:flutter/material.dart';
import '../../view/screen/auth/login_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRouteNames.login: (context) => const LoginPage(),
  AppRouteNames.onBoarding: (context) => const OnBoarding(),
  AppRouteNames.signUp: (context) => const SignUpPage(),
};
