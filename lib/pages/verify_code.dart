// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:flutter_application_1/components/verify_code/section_verify.dart';
import '../constants.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: kPrimaryColor,
          ),
          backgroundColor: kPrimaryLightColor,
          elevation: 0,
        ),
        backgroundColor: Colors.deepPurple.shade50,
        body: LayoutBuilder(
          builder: (context, constraints) => Padding(
            padding: const EdgeInsets.only(top: defaultPadding),
            child: VerifyCodeScreen(),
          ),
        ));
  }
}

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/verify_authen.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          SizedBox(height: defaultPadding),
          Text('Verification',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              )),
          SizedBox(height: defaultPadding / 2),
          Column(
            children: [
              Text('Enter th verification code',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  )),
              Text('we just sent you on your email address',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
          SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Divider(
              height: 1.5,
            ),
          ),
          SizedBox(height: defaultPadding),
          SectionVerify(),
        ],
      ),
    );
  }
}
