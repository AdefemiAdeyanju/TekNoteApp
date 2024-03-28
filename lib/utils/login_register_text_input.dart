import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final dynamic controller;
  final String labelText;
  final bool obscureText;
  final dynamic keyboardType;
  final dynamic suffixIcon;

  const InputText(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.obscureText,
      required this.keyboardType,
      required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          children: [
            TextField(
              keyboardType: keyboardType,
              obscureText: obscureText,
              controller: controller,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10.0),
                suffixIcon: suffixIcon,
                fillColor: Colors.white,
                labelText: labelText,
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
