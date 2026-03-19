import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/elevated_button/custom_elevated_button.dart';
import 'package:flutter_application_2/common/text_field/custom_password_field.dart';
import 'package:flutter_application_2/common/text_field/custom_text_field.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/core/local_state/shared_preferences.dart';
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
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.redPink,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == .success) {
            AppPrefs().setIsLogged(true);
            final controller = ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Log In success")));
            controller.closed.then((value) {
              context.go(AppRouteName.homeScreen);
            });
          } else if (state.status == .failure) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Log In failed")));
          }
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            crossAxisAlignment: .center,
            children: [
              SizedBox(height: 76,),
              CustomTextField(
                controller: _emailController,
                label: 'Email',
              ),
              SizedBox(height: 9,),
              CustomPasswordField(
                controller: _passWordController,
                label: 'Password',
              ),
              SizedBox(height: 89),
              SizedBox(
                width: 207,
                child: CustomElevatedButton(
                  text: "Log In",
                  onPressed: () {
                    authBloc.add(
                      LoginEvent(
                        email: _emailController.text,
                        password: _passWordController.text,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 27),
              SizedBox(
                width: 207,
                child: CustomElevatedButton(
                  text: "Sign Up",
                  onPressed: () {
                    context.go(AppRouteName.registerScreen);
                  },
                ),
              ),
              SizedBox(height: 58),
              TextButton(
                onPressed: () {
                  context.go(AppRouteName.loginScreen);
                },
                child: Text("Forgot Password?", style: TextStyle(fontSize: 14, fontWeight: .w600)),
              ),
              SizedBox(height: 58),
              Text("or sign up with", style: TextStyle(fontSize: 13, fontWeight: .w300)),
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
                  Text("Don’t have an account?", style: TextStyle(fontSize: 13, fontWeight: .w300),),
                  TextButton(
                    onPressed: () {
                      context.go(AppRouteName.registerScreen);
                    },
                    child: Text("Sign Up", style: TextStyle(fontSize: 13, fontWeight: .w300, color: AppColors.sweetPink)),
                  ),
                ],
              ),
              SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}
