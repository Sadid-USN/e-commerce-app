import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?) validator;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const MyField({
    Key? key,
    this.obscureText,
    this.onTapIcon,
    required this.hintText,
    required this.label,
    required this.suffixIcon,
    required this.validator,
    this.controller,
    required this.isNumber,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText == null || obscureText == false ? false : true,
      keyboardType: isNumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      validator: validator,
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
        suffixIcon: InkWell(
          onTap: onTapIcon,
          child: Icon(
            suffixIcon,
            color: obscureText == false ? Colors.blue : Colors.grey,
          ),
        ),
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
