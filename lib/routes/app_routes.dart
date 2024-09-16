import 'package:flutter/material.dart';
import 'package:lexi_leap/ui/screens/auth/login_screen.dart';
import 'package:lexi_leap/ui/screens/home/home_screen.dart';

// Thêm các màn hình khác khi cần

class AppRoutes {
  static const String initialRoute = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      // Thêm các case cho các màn hình khác
      default:
        return MaterialPageRoute(builder: (_) => LoginScreen()); // Fallback
    }
  }
}
