import 'package:flutter/material.dart';

const PrimaryColor = Colors.deepPurpleAccent;

const Background = Colors.red;
const TextColor = Colors.white;

class AppTheme {
  static final ThemeData defaultTheme = _buildTheme();

  static ThemeData _buildTheme() {
    return ThemeData(
      accentColor: PrimaryColor,
      accentColorBrightness: Brightness.dark,
      primaryColor: PrimaryColor,
      primaryColorBrightness: Brightness.dark,
      scaffoldBackgroundColor: Background,
      cardColor: Background,
      textSelectionColor: PrimaryColor,
      backgroundColor: Background,
      textTheme: TextTheme(
        title: TextStyle(
          color: TextColor,
          fontFamily: 'Hind',
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
        body1: TextStyle(
          color: TextColor,
          fontSize: 28.0,
          fontFamily: 'Hind',
          fontWeight: FontWeight.bold,
        ),
        body2: TextStyle(
          color: Color.fromARGB(255, 220, 220, 220),
          fontSize: 18.0,
          fontFamily: 'Hind',
        ),
      ),
    );
  }
}
