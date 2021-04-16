import 'package:blood_donation/pages/splash.dart';
import 'package:blood_donation/utils/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/bindings/allBindings.dart';
import 'pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      home: Splash(),
      debugShowCheckedModeBanner: false,
      initialBinding: AllBinding(),
      //initialBinding: Get.put(),
    );
  }
}
