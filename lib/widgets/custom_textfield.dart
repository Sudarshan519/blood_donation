import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final String label;
  final InputBorder inputBorder;
  final Color hintcolor;
  final Function ontap;
  final bool obscureText;
final IconData suffixIcon;
  const CustomTextField(
      {Key key,
      this.controller,
      this.hintText,
      this.inputBorder,
      this.hintcolor,
      this.ontap,
      this.obscureText = false,
      TextInputType textInputType, this.prefixIcon, this.label, this.suffixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
        validator: (v) {
          if (v.isEmpty) return '$hintText cannot be Empty';
          //email validation
          if (hintText.toLowerCase() == 'email') {
            if (v.isEmail) return null;
            return 'Invalid email';
          }

          if (hintText.toLowerCase() == 'city' ||
              hintText.toLowerCase() == 'street') {
            if (v.length < 3)
              return 'Enter a valid $hintText';
            else
              return null;
          }

          //validate phone
          if (hintText.toLowerCase() == 'phone') {
            if (v.isPhoneNumber) {
              return null;
            } else
              return 'invalid phone number';
          }
          //validate zip
          if (hintText.toLowerCase() == 'zip') {
            if (v.isNum) {
              return null;
            } else
              return 'invalid';
          } else
            return null;
        },
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10),
            hintText: hintText,
          
            labelStyle: TextStyle(color: hintcolor),
            prefixIcon: Icon(prefixIcon),
            suffixIcon: Icon(suffixIcon),
            labelText: label,
            border: inputBorder));
  }
}
