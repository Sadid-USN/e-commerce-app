import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../widget/login_filds.dart';

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
          const SizedBox(
            height: 50,
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
            height: 16,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Text(
                'Sign in with your email and password or continue with social media',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: Colors.grey.shade500,
                      fontSize: 18,
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const LoginFilds(),
        ],
      ),
    );
  }
}
