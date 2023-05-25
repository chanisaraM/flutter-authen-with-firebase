// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import '../constants.dart';

class CustomBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color color;
  final double width;
  final String text;
  final Color textColor;

  const CustomBtn({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textColor = Colors.black,
    this.color = kPrimaryColor,
    this.width = defaultButtonWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            fixedSize: Size(width, defaultButtonHeight),
            backgroundColor: color,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultBorderRound),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}
