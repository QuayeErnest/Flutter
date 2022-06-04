import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImageButton;
  final String butttonText;

  const MyButton(
      {Key? key, required this.iconImageButton, required this.butttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              //color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 40,
                  spreadRadius: 10,
                ),
              ]),
          child: Center(
            child: Image.asset(
              iconImageButton,
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          butttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
