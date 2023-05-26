// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import '../constants.dart';

class TextFiledNormal extends StatelessWidget {
  TextEditingController controller;
  String labelText;
  TextFiledNormal({
    super.key,
    required this.controller,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: kPrimaryColor,
          ),
          border: customOutlineborder(),
          contentPadding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          focusedBorder: myFocusborder(),
          enabledBorder: myEnableborder(),
        ));
  }
}

OutlineInputBorder customOutlineborder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
}

OutlineInputBorder myFocusborder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: kPrimaryColor,
      ));
}

OutlineInputBorder myEnableborder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: kPrimaryLightColor,
      ));
}
