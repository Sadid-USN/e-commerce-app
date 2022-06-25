import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  const LogoAuth({
    Key? key,
    required this.image,
    this.height,
    this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: height,
      width: width,
    );
  }
}
