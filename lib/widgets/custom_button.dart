import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // final TextEditingController controller;
  final String label;

  final Color btnColor;
  final Function ontap;
  final Color labelColor;
  final int borderRadius;
  const CustomButton({
    Key key,
    this.label,
    this.btnColor,
    this.ontap,
    this.labelColor,
    this.borderRadius,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        onPressed: ontap,
        child: Text(label),
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}