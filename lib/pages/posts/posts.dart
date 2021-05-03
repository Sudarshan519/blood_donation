import 'package:flutter/material.dart';

class RequestPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: 200,
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.deepOrange,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
