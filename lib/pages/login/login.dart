import 'package:blood_donation/controller/authController.dart';
import 'package:blood_donation/utils/textStyle/textStyle.dart';
import 'package:blood_donation/widgets/custom_button.dart';
import 'package:blood_donation/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/textStyle/textStyle.dart';
import '../../utils/textStyle/textStyle.dart';
import '../../utils/textStyle/textStyle.dart';
import '../home/home.dart';

class LoginNRegister extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Obx(
        () => SingleChildScrollView(
            child: authController.islogin.value
                ? Container(
                    height: height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(90))),
                          height: height * .5,
                          width: double.infinity,
                          child: Stack(alignment: Alignment.center, children: [
                            FlutterLogo(
                              size: 80,
                            ),
                            Positioned(
                                right: 30,
                                bottom: 30,
                                child: Text(
                                  'Login',
                                  style: mediumText.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ))
                          ]),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                CustomTextField(
                                  hintText: 'Email',
                                  prefixIcon: Icons.email,
                                  inputBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                SizedBox(height: 20),
                                CustomTextField(
                                  hintText: 'Password',
                                  prefixIcon: Icons.lock,
                                  inputBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                SizedBox(height: 20),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('Forgot Password',
                                        style: mediumText.copyWith(
                                            fontWeight: FontWeight.w400))),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CustomButton(
                            btnColor: Colors.deepOrange,
                            label: 'LOGIN',
                            labelColor: Colors.white,
                            ontap: () {
                              Get.off(Home());
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account "),
                            InkWell(
                              onTap: () {
                                authController.islogin.value = false;
                              },
                              child: Text(" Register",
                                  style: smallText.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor)),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  )
                : Container(
                    height: height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              // color: Colors.deepOrange,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(60))),
                          height: height * .3,
                          width: double.infinity,
                          child: Stack(alignment: Alignment.center, children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                //border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/request.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 30,
                                bottom: 30,
                                child: Text(
                                  'Register',
                                  style: mediumText.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ))
                          ]),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                CustomTextField(
                                  hintText: 'Fullname',
                                  prefixIcon: Icons.email,
                                  inputBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                SizedBox(height: 20),
                                CustomTextField(
                                  hintText: 'Email',
                                  prefixIcon: Icons.email,
                                  inputBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                SizedBox(height: 20),
                                CustomTextField(
                                  hintText: 'Phone',
                                  prefixIcon: Icons.email,
                                  inputBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                SizedBox(height: 20),
                                CustomTextField(
                                  hintText: 'Password',
                                  prefixIcon: Icons.lock,
                                  inputBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                SizedBox(height: 20),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('Forgot Password',
                                        style: mediumText.copyWith(
                                            fontWeight: FontWeight.bold))),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CustomButton(
                            btnColor: Colors.deepOrange,
                            label: 'Register',
                            labelColor: Colors.white,
                            ontap: () {
                              Get.off(Home());
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already hava account "),
                            InkWell(
                              onTap: () {
                                authController.islogin.value = true;
                              },
                              child: Text(" Login",
                                  style: smallText.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor)),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  )),
      ),
    );
  }
}
