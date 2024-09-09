import 'package:flutter/material.dart';
import 'package:lexi_leap/ui/screens/auth/login_screen.dart';
import 'package:lexi_leap/ui/screens/home/home_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String login = '/login';

  static String get initialRoute => home;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen()); // Fallback
    }
  }
}
