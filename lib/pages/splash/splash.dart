import 'package:blood_donation/controller/splashController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class Splash extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    //controller.height.value = MediaQuery.of(context).size.height;
    return Material(
      color: Colors.deepOrange,
      child: Column(
        children: [
          Expanded(child: Container()),
          CircleAvatar(
            radius: 63,
            backgroundColor: Colors.white,
            child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.deepOrange,
                child: FlutterLogo()),
          ),
          Expanded(child: Container()),
//           CircularProgressIndicator(
// strokeWidth: 1,
//             backgroundColor: Colors.white,
//           ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text(
                '1.1',
                style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 12),
              ),
              Spacer(),
              Text(
                'Blood Donation',
                style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 12),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
