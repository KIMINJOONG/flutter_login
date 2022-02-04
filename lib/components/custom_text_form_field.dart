import 'package:flutter/material.dart';
import 'package:flutter_login/size.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final mValide;

  const CustomTextFormField({required this.text, required this.mValide});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$text"),
        SizedBox(height: small_get),
        TextFormField(
          validator: mValide,
          obscureText: text == "password",
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
