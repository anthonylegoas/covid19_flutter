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
            color: Colors.white,
            fontFamily: 'Hind',
            fontSize: 24.0,
          ),
          body1: TextStyle(
            color: Colors.red,
            fontSize: 18.0,
            fontFamily: 'Hind',
          ),
          body2: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontFamily: 'Hind',
          ),
    );
  }
}
