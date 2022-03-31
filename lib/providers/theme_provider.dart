import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  final ThemeData _darkTheme = ThemeData.dark();
  final ThemeData _lightTheme = ThemeData.light();

  late ThemeData currentTheme;

  bool switchValue = true;

  ThemeProvider() {
    currentTheme = _darkTheme;
  }

  void switchTheme(ThemeData theme) {
    currentTheme =
        theme.brightness == Brightness.dark ? _lightTheme : _darkTheme;
    switchValue = !switchValue;
    notifyListeners();
  }
}
