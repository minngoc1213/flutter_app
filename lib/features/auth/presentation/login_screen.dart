import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/text_field/custom_text_field.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/router/app_router.dart';
import 'package:go_router/go_router.dart';

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
          crossAxisAlignment: .start,
          children: [
            CustomTextField(controller: _emailController, label: 'Email'),
            CustomTextField(controller: _passWordController, label: 'Password'),

            ElevatedButton(
              onPressed: () {
                context.go(AppRouteName.homeScreen);
              },
              child: Text("Log In"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go(AppRouteName.registerScreen);
              },
              child: Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
