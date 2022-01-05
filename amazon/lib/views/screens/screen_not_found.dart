import 'package:flutter/material.dart';

import 'screen_home.dart';

class ScreenNotFound extends StatelessWidget {
  final String? route;
  const ScreenNotFound({Key? key, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = Text(
      "${route ?? ''} Not Found",
      style: const TextStyle(fontSize: 50),
    );

    final homeBtn = TextButton(
      onPressed: () => goToHomePage(context),
      child: const Text('Back to Home'),
    );
    return Scaffold(
      appBar: AppBar(leading: homeBtn),
      body: Center(child: text),
    );
  }

  void goToHomePage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(ScreenHome.route);
  }
}
