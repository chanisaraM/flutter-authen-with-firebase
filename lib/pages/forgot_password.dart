// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_btn.dart';
import 'package:flutter_application_1/components/text_filed_normal.dart';
import 'package:flutter_application_1/pages/verify_code.dart';
import '../constants.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: kPrimaryColor,
          ),
          // title: Text('Forgot Password', style: TextStyle(color: kPrimaryColor)),
          backgroundColor: kPrimaryLightColor,
          elevation: 0,
        ),
        backgroundColor: Colors.deepPurple.shade50,
        body: LayoutBuilder(
          builder: (context, constraints) => Padding(
            padding: const EdgeInsets.only(top: defaultPadding),
            child: ForgotPasswordScreen(),
          ),
        ));
  }
}

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController verifyEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/forgot_password.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          SizedBox(height: defaultPadding),
          Text('Forgot Password ? ', style: TextStyle(color: kPrimaryColor, fontSize: 24, fontWeight: FontWeight.w500)),
          SizedBox(height: defaultPadding / 2),
          Column(
            children: [
              Text('Enter the email address associated', style: TextStyle(color: Colors.black54, fontSize: 14, fontWeight: FontWeight.w500)),
              Text('with yous account.', style: TextStyle(color: Colors.black54, fontSize: 14, fontWeight: FontWeight.w500)),
            ],
          ),
          SizedBox(height: defaultPadding),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width - (defaultPadding * 4),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10),
                bottom: Radius.circular(10),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                TextFiledNormal(
                  controller: verifyEmail,
                  labelText: 'Email',
                ),
                SizedBox(height: 20),
                CustomBtn(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return VerifyCodePage();
                      },
                    ),
                  ),
                  text: 'Send',
                  textColor: kPrimaryLightColor,
                  color: kPrimaryColor,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
