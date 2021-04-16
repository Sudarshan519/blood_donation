import 'package:blood_donation/controller/splashController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class Splash extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Center(
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
