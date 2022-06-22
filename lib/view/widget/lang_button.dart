import 'package:flutter/material.dart';

class LangButton extends StatelessWidget {
  final String textButton;
  // final Widget title;
  final Widget? trailing;
  final void Function()? onTap;
  const LangButton({
    Key? key,
    required this.textButton,
    this.onTap,
    this.trailing,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: trailing,
      onTap: onTap,
      leading: Text(
        textButton,
        style: TextStyle(
            fontSize: 18,
            color: Colors.blueGrey.shade800,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
