import 'package:blood_donation/pages/login/login.dart';
import 'package:blood_donation/pages/splash.dart';
import 'package:blood_donation/utils/theme/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      home: Splash(),
    );
  }
}
