// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import '../constants.dart';

class TextFiledPassword extends StatefulWidget {
  TextEditingController controller;
  String labelText;
  TextFiledPassword({
    super.key,
    required this.controller,
    required this.labelText,
  });

  @override
  State<TextFiledPassword> createState() => _TextFiledPasswordState();
}

class _TextFiledPasswordState extends State<TextFiledPassword> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: widget.controller,
        obscureText: hidePassword,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: kPrimaryColor,
          ),
          border: customOutlineborder(),
          contentPadding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          suffixIcon: IconButton(
            color: kPrimaryColor,
            icon: hidePassword ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                hidePassword = !hidePassword;
              });
            },
          ),
          focusedBorder: myfocusborder(),
          enabledBorder: myEnableborder(),
        ));
  }
}

OutlineInputBorder customOutlineborder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
}

OutlineInputBorder myfocusborder() {
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
