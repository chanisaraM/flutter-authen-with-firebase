// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_btn.dart';
import 'package:flutter_application_1/components/text_filed_password.dart';
import 'package:flutter_application_1/pages/reset_complete.dart';
import '../constants.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

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
          builder: (context, constraints) => ResetPasswordScreen(),
        ));
  }
}

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width - (16 * 2),
              decoration: const BoxDecoration(
                color: kPrimaryColor,
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
                      'Create New Password',
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35 + 8,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width - (16 * 2),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                  bottom: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    "New password must be different\nfrom previously used password.",
                    style: TextStyle(color: Colors.black54),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        TextFiledPassword(
                          controller: password,
                          labelText: 'New password',
                        ),
                        SizedBox(height: 16),
                        TextFiledPassword(
                          controller: confirmPassword,
                          labelText: 'Confirm password',
                        ),
                        SizedBox(height: 24),
                        CustomBtn(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ResetCompletePage();
                              },
                            ),
                          ),
                          text: 'Create',
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -16,
            left: 16,
            child: Center(
              child: Image.asset(
                'assets/images/reset.png',
                width: MediaQuery.of(context).size.width * 0.9,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
