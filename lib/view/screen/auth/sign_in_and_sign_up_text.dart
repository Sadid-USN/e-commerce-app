import 'package:e_encommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

class SignInAndSignUpText extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function() onTap;

  const SignInAndSignUpText(
      {Key? key,
      required this.textone,
      required this.texttwo,
      required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: textone,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: forgotPasswordColor, fontSize: 16),
              ),
              TextSpan(
                text: texttwo,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: signinButtonColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
