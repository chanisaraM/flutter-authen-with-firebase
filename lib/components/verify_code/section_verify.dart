// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_btn.dart';
import 'package:flutter_application_1/components/verify_code/otp.dart';
import 'package:flutter_application_1/pages/reset_password.dart';
import '../../constants.dart';

class SectionVerify extends StatefulWidget {
  const SectionVerify({super.key});

  @override
  State<SectionVerify> createState() => _SectionVerifyState();
}

class _SectionVerifyState extends State<SectionVerify> {
  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OTP(first: true, last: false, controlle: otp1),
            OTP(first: false, last: false, controlle: otp2),
            OTP(first: false, last: false, controlle: otp3),
            OTP(first: false, last: true, controlle: otp4),
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
        CustomBtn(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ResetPasswordPage();
              },
            ),
          ),
          text: 'Send',
          textColor: kPrimaryLightColor,
          color: kPrimaryColor,
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ],
    );
  }
}
