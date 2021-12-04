import 'package:flutter/material.dart';

//Untuk membuat provider, maka kita wajib menambahkan ChangeNotifier
class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toogleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  //variable untuk mengatur dark theme
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff121212),
    colorScheme: const ColorScheme.dark(),
    brightness: Brightness.dark,
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    brightness: Brightness.light,
  );
}
