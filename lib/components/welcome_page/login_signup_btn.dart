// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import '../../../constants.dart';
// import '../../Login/login_screen.dart';
// import '../../Signup/signup_screen.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Container();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(350, 50),
            backgroundColor: const Color(0xFF641E5E),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: const Text(
            "LOGIN",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Container();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(350, 50),
            backgroundColor: const Color(0xFFFFE6FA),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: const Text(
            "SING UP",
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
