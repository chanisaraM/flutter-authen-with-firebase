// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/welcome_page/background.dart';
import '../constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: SafeArea(
              child: LoginScreen(),
            ),
          ),
        ));
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(children: <Widget>[
        Positioned(
          top: -16,
          left: 16,
          child: Image.asset(
            'assets/images/login_banner.png',
            width: MediaQuery.of(context).size.width * 0.9,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.70,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: defaultPadding),
                  child: Text(
                    'Login To Your Account',
                    style: TextStyle(color: kPrimaryColor, fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: (MediaQuery.of(context).size.height * 0.60) + (defaultPadding * 2),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
