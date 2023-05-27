// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../constants.dart';

class OTP extends StatelessWidget {
  bool first, last;
  TextEditingController controlle;
  OTP({
    super.key,
    required this.first,
    required this.last,
    required this.controlle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: SizedBox(
        height: 60,
        width: 50,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: TextField(
            controller: controlle,
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              fillColor: Colors.amber,
              counter: const Offstage(),
              enabledBorder:
                  OutlineInputBorder(borderSide: const BorderSide(width: 2, color: Colors.black12), borderRadius: BorderRadius.circular(12)),
              focusedBorder:
                  OutlineInputBorder(borderSide: const BorderSide(width: 2, color: kPrimaryColor), borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
      ),
    );
  }
}
