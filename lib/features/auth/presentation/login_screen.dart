import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/elevated_button/custom_elevated_button.dart';
import 'package:flutter_application_2/common/text_field/custom_password_field.dart';
import 'package:flutter_application_2/common/text_field/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _emailController = .new();
  final TextEditingController _passWordController = .new();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          crossAxisAlignment: .center,
          children: [
            CustomTextField(controller: _emailController, label: 'Email'),
            CustomPasswordField(
              controller: _passWordController,
              label: 'Password',
            ),
            SizedBox(height: 89,),
            CustomElevatedButton(text: "Log In", horizontalPadding: 74,),
            SizedBox(height: 27,),
            CustomElevatedButton(text: "Sign Up", horizontalPadding: 65,)
          ],
        ),
      ),
    );
  }
}
