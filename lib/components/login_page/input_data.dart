// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/back_to_home_page.dart';
import 'package:flutter_application_1/components/custom_btn.dart';
import 'package:flutter_application_1/components/text_filed_normal.dart';
import 'package:flutter_application_1/components/text_filed_password.dart';
import 'package:flutter_application_1/pages/sign_up.dart';
import 'package:flutter_application_1/pages/welcome_page.dart';
import '../../constants.dart';

class InputInformation extends StatelessWidget {
  const InputInformation({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return SingInController();
  }
}

class SingInController extends StatefulWidget {
  const SingInController({super.key});

  @override
  State<SingInController> createState() => _SingInController();
}

class _SingInController extends State<SingInController> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool remember = false;

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
        padding: EdgeInsets.only(left: 12, top: 60, right: 12, bottom: 12),
        margin: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          children: [
            TextFiledNormal(
              controller: username,
              labelText: 'Username',
            ),
            SizedBox(height: 16),
            TextFiledPassword(
              controller: password,
              labelText: 'Password',
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20.0,
                      child: Checkbox(
                        shape: CircleBorder(),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(width: 1.0, color: kPrimaryColor),
                        ),
                        checkColor: kPrimaryLightColor,
                        activeColor: kPrimaryColor,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: remember,
                        onChanged: (val) {
                          setState(() {
                            remember = !remember;
                          });
                        },
                      ),
                    ),
                    Text(
                      '\tRemember Me',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                TextButton(
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(fontSize: 12),
                  ),
                  onPressed: () async {},
                ),
              ],
            ),
            SizedBox(height: 16),
            CustomBtn(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Container();
                  },
                ),
              ),
              text: 'Login',
              textColor: Colors.white,
              width: MediaQuery.of(context).size.width * 0.4,
            ),
            Divider(
              thickness: 1.5,
              color: kPrimaryLightColor,
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 52),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(onTap: () {}, child: Image.asset('assets/images/facebook.png', width: 40)),
                  GestureDetector(onTap: () {}, child: Image.asset('assets/images/google.png', width: 40)),
                  GestureDetector(onTap: () {}, child: Image.asset('assets/images/twitter.png', width: 40)),
                ],
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t Have Account',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                TextButton(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpPage();
                        },
                      ),
                    )
                  },
                )
              ],
            ),
            BackToHomePage()
          ],
        ),
      ),
    );
  }
}
