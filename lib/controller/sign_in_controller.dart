import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class SignInController extends GetxController {
  login();
}

class SignInLoginController extends SignInController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  login() {}

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
