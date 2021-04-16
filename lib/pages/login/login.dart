import 'package:blood_donation/controller/authController.dart';
import 'package:blood_donation/utils/textStyle/textStyle.dart';
import 'package:blood_donation/widgets/custom_button.dart';
import 'package:blood_donation/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginNRegister extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: authController.islogin.value
            ? Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(20))),
                    height: height * .3,
                    child: Stack(children: [
                      FlutterLogo(),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Login',
                            style: mediumText.copyWith(color: Colors.white),
                          ))
                    ]),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(),
                        SizedBox(),
                        CustomTextField(),
                        SizedBox(),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Forgot Password',
                                style: mediumText.copyWith(
                                    fontWeight: FontWeight.bold))),
                        Row(
                          children: [
                            Text("Don't have an account "),
                            Text(" Register",
                                style: mediumText.copyWith(
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                  ),
                  CustomButton(label: 'LOGIN'),
                ],
              )
            : Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(20))),
                    height: height * .3,
                    child: Stack(children: [
                      FlutterLogo(),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Register',
                            style: mediumText.copyWith(color: Colors.white),
                          ))
                    ]),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(),
                        SizedBox(),
                        CustomTextField(),
                        SizedBox(),
                        CustomTextField(),
                        SizedBox(),
                        CustomTextField(),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Forgot Password',
                                style: mediumText.copyWith(
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                  ),
                  CustomButton(label: 'LOGIN'),
                ],
              ),
      ),
    );
  }
}
