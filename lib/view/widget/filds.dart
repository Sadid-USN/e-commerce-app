import 'package:flutter/material.dart';

class Filds extends StatelessWidget {
  final String label;
  final String hintText;
  final Widget suffixIcon;
  final TextEditingController? controller;

  const Filds({
    Key? key,
    required this.hintText,
    required this.label,
    required this.suffixIcon,
    this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.grey.shade400,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        label: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            label,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.grey.shade500, fontSize: 18),
          ),
        ),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .headline1!
            .copyWith(color: Colors.grey.shade400, fontSize: 15.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
