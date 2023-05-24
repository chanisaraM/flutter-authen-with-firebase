import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var defaultPadding = 16.0;
    return Column(
      children: [
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 10,
              child: Image.asset('assets/images/taken.png', width: 200),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
