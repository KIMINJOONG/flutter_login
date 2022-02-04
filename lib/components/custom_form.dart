import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_text_form_field.dart';
import 'package:flutter_login/size.dart';
import 'package:validators/validators.dart';

class CustomForm extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(text: "email", mValide: (value) {
            if(value == null || value.isEmpty) {
              return "Please enter some text";
            } else if(!isEmail(value)) {
              return "이메일 형식이 아닙니다.";
            } else {
              return null;
            }
          },),
          SizedBox(height: medium_get,),
          CustomTextFormField(text: "password",mValide: (value) {
            if(value == null || value.isEmpty) {
              return "Please enter some text";
            } else if(value.toString().length > 20) {
              return "패스워드의 길이를 초과하였습니다.";
            }
          },),
          SizedBox(height: large_get,),
          TextButton(
              onPressed: () {
                if(_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, "/home");
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}