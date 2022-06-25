import 'package:e_encommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final double height;
  final double width;
  final void Function()? onPressed;
  final String? text;
  const AuthButton({
    Key? key,
    this.onPressed,
    this.text,
    required this.height,
    required this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: signinButtonColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0),
            ]),
        child: Text(
          text!,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.0),
        ),
      ),
    );
  }
}
