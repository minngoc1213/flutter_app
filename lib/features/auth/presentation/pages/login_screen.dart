import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/elevated_button/custom_elevated_button.dart';
import 'package:flutter_application_2/common/text_field/custom_password_field.dart';
import 'package:flutter_application_2/common/text_field/custom_text_field.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_application_2/features/auth/presentation/bloc/auth_event.dart';
import 'package:flutter_application_2/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_application_2/router/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _emailController = .new();
  final TextEditingController _passWordController = .new();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final AuthBloc authBloc = context.read();
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == .success) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Log In success")));
          } else if (state.status == .failure) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Log In failed")));
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  crossAxisAlignment: .center,
                  children: [
                    SizedBox(height: 28),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.redPink,
                      ),
                    ),
                    Spacer(),
                    CustomTextField(
                      controller: _emailController,
                      label: 'Email',
                    ),
                    CustomPasswordField(
                      controller: _passWordController,
                      label: 'Password',
                    ),
                    SizedBox(height: 89),
                    CustomElevatedButton(
                      text: "Log In",
                      horizontalPadding: 74,
                      onPressed: () {
                        authBloc.add(
                          LoginEvent(
                            email: _emailController.text,
                            password: _passWordController.text,
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 27),
                    CustomElevatedButton(
                      text: "Sign Up",
                      horizontalPadding: 65,
                      onPressed: () {
                        context.go(AppRouteName.registerScreen);
                      },
                    ),
                    SizedBox(height: 57.59),
                    TextButton(
                      onPressed: () {
                        context.go(AppRouteName.loginScreen);
                      },
                      child: Text("Forgot Password?"),
                    ),
                    SizedBox(height: 74.96),
                    Text("or sign up with"),
                    SizedBox(height: 24),
                    Row(
                      mainAxisSize: .min,
                      spacing: 13.96,
                      children: List.generate(4, (index) {
                        return SvgPicture.asset("assets/svg/login$index.svg");
                      }),
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisSize: .min,
                      children: [
                        Text("Don’t have an account?"),
                        TextButton(
                          onPressed: () {
                            context.go(AppRouteName.registerScreen);
                          },
                          child: Text("Sign Up"),
                        ),
                      ],
                    ),
                    SizedBox(height: 70),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
