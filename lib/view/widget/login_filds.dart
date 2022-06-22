import 'package:flutter/material.dart';

class LoginFilds extends StatelessWidget {
  const LoginFilds({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: TextFormField(
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
                  'Email',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.grey.shade500, fontSize: 18),
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.email_outlined,
                  color: Colors.grey.shade400,
                ),
              ),
              hintText: 'Enter your email',
              hintStyle: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Colors.grey.shade400, fontSize: 16),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: TextFormField(
            obscureText: true,
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
                  'Password',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.grey.shade500, fontSize: 18),
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.lock_outline,
                  color: Colors.grey.shade400,
                ),
              ),
              hintText: 'Enter your password',
              hintStyle: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Colors.grey.shade400, fontSize: 16),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),
      ],
    );
  }
}
