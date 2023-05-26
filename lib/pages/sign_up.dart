// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/signup_page/form_data.dart';
import '../constants.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: LayoutBuilder(
          builder: (context, constraints) => Padding(
            padding: const EdgeInsets.only(top: 52),
            child: SignUpScreen(),
          ),
        ));
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(children: <Widget>[
          // Positioned(
          //   top: -16,
          //   left: 16,
          //   child: Image.asset(
          //     'assets/images/login_banner.png',
          //     width: MediaQuery.of(context).size.width * 0.9,
          //   ),
          // ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width - (16 * 2),
              decoration: const BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                  bottom: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: defaultPadding),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: kPrimaryColor, fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.15 + 8,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width - (16 * 2),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                  bottom: Radius.circular(40),
                ),
              ),
              child: SignUp(),
            ),
          ),
        ]),
      ),
    );
  }
}
