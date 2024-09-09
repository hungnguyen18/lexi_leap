import 'package:flutter/material.dart';

import 'app_theme.dart';

class ThemeDataConfig {
  static ThemeData getTheme(bool isDarkMode) {
    return isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme;
  }
}
