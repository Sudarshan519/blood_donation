import 'package:blood_donation/controller/authController.dart';
import 'package:blood_donation/utils/textStyle/textStyle.dart';
import 'package:blood_donation/widgets/custom_button.dart';
import 'package:blood_donation/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/textStyle/textStyle.dart';
import '../home/home.dart';

class LoginNRegister extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Obx(
        () => authController.islogin.value
            ? Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(90))),
                      height: height * .4,
                      width: double.infinity,
                      child: Stack(alignment: Alignment.center, children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40,
                          child: CircleAvatar(
                            radius: 36,
                            backgroundColor: Theme.of(context).primaryColor,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                //border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/donor.png',
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
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
                  ),
                  Expanded(
                    child: Container(
                      height: height * .6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              //    topLeft: Radius.circular(50),
                              //    topRight: Radius.circular(50),
                              ),
                          color: Colors.white),
                      padding: EdgeInsets.all(20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            CustomTextField(
                              hintText: 'Email',
                              prefixIcon: Icons.email,
                              inputBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            SizedBox(height: 15),
                            CustomTextField(
                              hintText: 'Password',
                              prefixIcon: Icons.lock,
                              inputBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            SizedBox(height: 10),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Text('Forgot Password',
                                    style: mediumText.copyWith(
                                        fontWeight: FontWeight.w400))),
                            Container(
                              color: Colors.white,
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: CustomButton(
                                borderRadius: 15,
                                btnColor: Colors.deepOrange,
                                label: 'LOGIN',
                                labelColor: Colors.white,
                                ontap: () {
                                  Get.offAll(Home());
                                },
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Row(
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
                                            color: Theme.of(context)
                                                .primaryColor)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //  Container(color: Colors.white, height: 100)
                ],
              )
            : ListView(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.only(
                            //       bottomLeft: Radius.circular(60)
                            )),
                    height: height * .45,
                    width: double.infinity,
                    child: Stack(alignment: Alignment.center, children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: CircleAvatar(
                          radius: 36,
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              //border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/donor.png',
                                ),
                              ),
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
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))
                        //BorderRadius.circular(50)
                        ),
                    padding: EdgeInsets.all(10),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 26),
                          CustomTextField(
                            hintText: 'Fullname',
                            prefixIcon: Icons.email,
                            inputBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (v) {}),
                              Text('Use current location')
                            ],
                          ),
                          CustomTextField(
                            hintText: 'Address',
                            prefixIcon: Icons.email,
                            inputBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(height: 16),
                          CustomTextField(
                            hintText: 'BloodBroup',
                            prefixIcon: Icons.email,
                            inputBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(height: 16),
                          CustomTextField(
                            hintText: 'Phone',
                            prefixIcon: Icons.email,
                            inputBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(height: 16),
                          CustomTextField(
                            hintText: 'Password',
                            prefixIcon: Icons.lock,
                            inputBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(height: 16),
                          CustomTextField(
                            hintText: 'Confirm Password',
                            prefixIcon: Icons.lock,
                            inputBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: CustomButton(
                      borderRadius: 15,
                      btnColor: Colors.deepOrange,
                      label: 'REGISTER',
                      labelColor: Colors.white,
                      ontap: () {
                        Get.offAll(Home());
                      },
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Row(
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
                  ),
                  Container(color: Colors.white, height: 10)
                ],
              ),
      ),
    );
  }
}
