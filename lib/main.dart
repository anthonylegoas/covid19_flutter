import 'package:covid19_flutter/app/pages/home.dart';
import 'package:covid19_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID-19',
      theme: AppTheme.defaultTheme,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/face-protection.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
        child: HomePage(title: 'COVID-19 stats'),
      ),
    );
  }
}
