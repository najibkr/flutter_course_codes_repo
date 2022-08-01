import 'package:flutter/material.dart';

import 'screen_signin.dart';
import 'screen_signup.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    // Pages:
    final pageView = PageView(
      controller: _controller,
      children: const [ScreenSignin(), ScreenSignup()],
    );

    // Toggle Button:
    final toggleBtn = TextButton(
      onPressed: () => _controller.page == 0 ? next() : back(),
      child: const Text('Toggle'),
    );

    // Screen:
    return Scaffold(
      body: pageView,
      floatingActionButton: toggleBtn,
    );
  }

  void next() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void back() {
    _controller.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }
}
