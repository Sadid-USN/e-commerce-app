import 'package:flutter/material.dart';

class SuccessResetPaswword extends StatelessWidget {
  const SuccessResetPaswword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Success Reset Paswword'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: const [
            Text('Success Reset Paswword'),
          ],
        ),
      ),
    );
  }
}
