import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  ThemeData get themeData {
    return _isDarkMode ? darkTheme : lightTheme;
  }

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Color(0xFF6B8AFB),
    textTheme: TextTheme(
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    iconTheme: IconThemeData(color: Color(0xFF6B8AFB)),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xFF121212),
    primaryColor: Color(0xFF6B8AFB),
    textTheme: TextTheme(
      bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    iconTheme: IconThemeData(color: Colors.white),
  );
}
