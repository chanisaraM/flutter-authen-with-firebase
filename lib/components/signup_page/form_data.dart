// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_btn.dart';
import 'package:flutter_application_1/components/text_filed_normal.dart';
import 'package:flutter_application_1/components/text_filed_password.dart';
import 'package:flutter_application_1/pages/login_page.dart';

import '../../constants.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SingUpController();
  }
}

class SingUpController extends StatefulWidget {
  const SingUpController({super.key});

  @override
  State<SingUpController> createState() => _SingUpController();
}

class _SingUpController extends State<SingUpController> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  void initState() {
    username.text = "";
    password.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 12, top: 16, right: 12, bottom: 12),
        margin: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          children: [
            Text(
              'Create an account',
              style: TextStyle(color: Colors.black38, fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 16),
            TextFiledNormal(
              controller: username,
              labelText: 'Username',
            ),
            SizedBox(height: 16),
            TextFiledNormal(
              controller: email,
              labelText: 'Email',
            ),
            SizedBox(height: 16),
            TextFiledPassword(
              controller: password,
              labelText: 'Password',
            ),
            SizedBox(height: 16),
            TextFiledPassword(
              controller: confirmPassword,
              labelText: 'Confirm password',
            ),
            SizedBox(height: 24),
            CustomBtn(
              onPressed: () => {},
              text: 'Sign Up',
              textColor: Colors.white,
            ),
            Divider(
              thickness: 1.5,
              color: kPrimaryLightColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account ?\t',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                TextButton(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    )
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
