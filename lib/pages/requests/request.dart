import 'package:blood_donation/pages/home/home.dart';
import 'package:blood_donation/widgets/custom_button.dart';
import 'package:blood_donation/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request Blood'),
      ),
      body: Form(
              child: ListView(
          padding: EdgeInsets.symmetric(horizontal:20),
          children: [
            SizedBox(height:10),
          CustomTextField(
            prefixIcon: Icons.location_on,
            hintText: 'BloodGroup',
            inputBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
    // Text('Fill up form'),
         // Text('Address'),
          SizedBox(height:20),
          CustomTextField(
            prefixIcon: Icons.location_on,
            hintText: 'Address',
            inputBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            suffixIcon: Icons.search,
          ),
           SizedBox(height:10),
          Container(height: 200,
          color: Colors.orange,),
          SizedBox(height:20),
          CustomTextField(
prefixIcon: Icons.phone,
            hintText: 'Phone no',
            inputBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
           SizedBox(height:20),
          CustomTextField(
            prefixIcon: Icons.local_hospital,
            hintText: 'Hospital Details',
            inputBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
           SizedBox(height:20),
          CustomButton(
                        borderRadius: 10,
                        btnColor: Colors.deepOrange,
                        label: 'Continue'.toUpperCase(),
                        labelColor: Colors.white,
                        ontap: () {
                          Get.back();
                        },
                      ),
                      SizedBox(height:20),
                      Text('Our services are free of service.Do not pay anyone.',textAlign: TextAlign.center,),
                       SizedBox(height:20),
        ],),
      ),
    );
  }
}