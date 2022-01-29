import 'package:flutter/material.dart';
import 'package:flutter_login/components/Logo.dart';
import 'package:flutter_login/components/custom_text_form_field.dart';
import 'package:flutter_login/size.dart';

class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xlarge_get,),
            Logo("Login"),
            SizedBox(height: large_get,),
            CustomTextFormField(text: "email",),
            SizedBox(height: medium_get,),
            CustomTextFormField(text: "password",),
            SizedBox(height: large_get,),
            TextButton(onPressed: () {}, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}


