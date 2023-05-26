import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/welcome_page.dart';

class BackToHomePage extends StatelessWidget {
  const BackToHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text(
        "Back to Homepage",
        style: TextStyle(
          color: Colors.black26,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
      onPressed: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const WelcomePage();
            },
          ),
        )
      },
    );
  }
}
