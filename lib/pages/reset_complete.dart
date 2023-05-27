// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_btn.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import '../constants.dart';

class ResetCompletePage extends StatelessWidget {
  const ResetCompletePage({super.key});

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
        backgroundColor: kPrimaryLightColor,
        body: LayoutBuilder(
          builder: (context, constraints) => ResetCompleteScreen(),
        ));
  }
}

class ResetCompleteScreen extends StatefulWidget {
  const ResetCompleteScreen({super.key});

  @override
  State<ResetCompleteScreen> createState() => _ResetCompleteScreenState();
}

class _ResetCompleteScreenState extends State<ResetCompleteScreen> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 36.0),
      child: Column(
        children: [
          SizedBox(height: defaultPadding),
          Center(
            child: Image.asset(
              'assets/images/complete.png',
              // width: MediaQuery.of(context).size.width * 0.7,
            ),
          ),
          SizedBox(height: defaultPadding * 2),
          Text(
            'Password Updated !',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black54),
          ),
          Text(
            'Yous password has been updated.',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          SizedBox(height: defaultPadding * 2),
          CustomBtn(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginPage();
                },
              ),
            ),
            text: 'Sign In',
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
