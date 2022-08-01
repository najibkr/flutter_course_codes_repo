import 'package:amazon/views/screens/screen_home.dart';
import 'package:amazon/views/screens/screen_login.dart';
import 'package:amazon/views/screens/screen_not_found.dart';
import 'package:flutter/material.dart';

Route<dynamic>? appRouter(RouteSettings settings, bool isSignedIn) {
  if (!isSignedIn) {
    return MaterialPageRoute(builder: (context) => const ScreenLogin());
  }
  switch (settings.name) {
    case ScreenHome.route:
      return MaterialPageRoute(builder: (context) => const ScreenHome());
    default:
      return MaterialPageRoute(
        builder: (context) => ScreenNotFound(route: settings.name),
      );
  }
}
