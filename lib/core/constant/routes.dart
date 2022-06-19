import 'package:e_encommerce/core/constant/route_names.dart';
import 'package:flutter/material.dart';
import '../../view/screen/auth/login_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRouteNames.login: (context) => const LoginPage(),
};