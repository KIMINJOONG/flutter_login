import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_text_form_field.dart';
import 'package:flutter_login/size.dart';

class CustomForm extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(text: "email",),
          SizedBox(height: medium_get,),
          CustomTextFormField(text: "password",),
          SizedBox(height: large_get,),
          TextButton(
              onPressed: () {
                _formKey.currentState!.validate();
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}