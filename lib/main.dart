import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lexi_leap/core/constants/strings.dart';
import 'package:lexi_leap/routes/app_routes.dart'; // Giả định bạn đã định nghĩa các route ở đây
import 'package:lexi_leap/ui/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.homeTitle,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode
          .light, // Hoặc ThemeMode.dark, tùy thuộc vào cài đặt người dùng
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('vi', 'VN'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate, // Add this
      ],
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: AppRoutes.initialRoute,
    );
  }
}
