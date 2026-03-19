import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/elevated_button/custom_elevated_button.dart';
import 'package:flutter_application_2/common/text_field/custom_password_field.dart';
import 'package:flutter_application_2/common/text_field/custom_text_field.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/features/auth/domain/entities/user_entities.dart';
import 'package:flutter_application_2/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_application_2/features/auth/presentation/bloc/auth_event.dart';
import 'package:flutter_application_2/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_application_2/router/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final TextEditingController _nameController = .new();
  final TextEditingController _emailController = .new();
  final TextEditingController _mobileController = .new();
  final TextEditingController _dobController = .new();
  final TextEditingController _passWordController = .new();
  final TextEditingController _confirmPassWordController = .new();

  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = context.read<AuthBloc>();
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
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
            showDialogSuccess(context, size);
          } else if (state.status == .failure) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Sign Up failed")));
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: SizedBox(
            height: size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: .center,
                children: [
                  Column(
                    spacing: 9,
                    children: [
                      CustomTextField(
                        controller: _nameController,
                        label: 'Full Name',
                      ),
                      CustomTextField(
                        controller: _emailController,
                        label: 'Email',
                      ),
                      CustomTextField(
                        controller: _mobileController,
                        label: 'Mobile Number',
                      ),
                      CustomTextField(
                        onTap: () async {
                          DateTime? dob = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          );
                          if (dob != null) {
                            _dobController.text = dob.toString().split(" ")[0];
                          }
                        },
                        controller: _dobController,
                        label: 'Date Of Birth',
                      ),
                      CustomPasswordField(
                        controller: _passWordController,
                        label: 'Password',
                      ),
                      CustomPasswordField(
                        controller: _confirmPassWordController,
                        label: 'Comfirm Password',
                      ),
                    ],
                  ),
                  SizedBox(height: 47.5),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 50),
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: .w400,
                              color: AppColors.black,
                            ),
                            children: [
                              TextSpan(text: "By continuing, you agree to "),
                              TextSpan(
                                text: "Terms of Use",
                                style: TextStyle(fontWeight: .w600),
                              ),
                              TextSpan(text: " and "),
                              TextSpan(
                                text: "Privacy Policy.",
                                style: TextStyle(fontWeight: .w600),
                              ),
                            ],
                          ),
                          textAlign: .center,
                        ),
                        SizedBox(height: 12),
                        CustomElevatedButton(
                          onPressed: () {
                            authBloc.add(
                              RegisterEvent(
                                User(
                                  fullName: _nameController.text,
                                  email: _emailController.text,
                                  mobile: _mobileController.text,
                                  dob: _dobController.text,
                                  password: _passWordController.text,
                                ),
                              ),
                            );
                          },
                          text: "Sign Up",
                          backgroundColor: AppColors.redPink,
                          textColor: AppColors.white,
                        ),
                        SizedBox(height: 12),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: .center,
                    mainAxisSize: .min,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(fontSize: 13, fontWeight: .w300),
                      ),
                      TextButton(
                        onPressed: () {
                          context.go(AppRouteName.loginScreen);
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: AppColors.sweetPink,
                            fontSize: 13,
                            fontWeight: .w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 75),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> showDialogSuccess(BuildContext context, Size size) async {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          alignment: .center,
          backgroundColor: AppColors.white,
          child: Container(
            width: .minPositive,
            padding: EdgeInsets.symmetric(horizontal: 36, vertical: 23),
            child: Column(
              mainAxisSize: .min,
              crossAxisAlignment: .center,
              children: [
                Text(
                  "Sign up succesful!",
                  style: TextStyle(fontSize: 20, fontWeight: .w600),
                ),
                Icon(Icons.person, size: 82, color: AppColors.pink),
                Text(
                  "Lorem ipsum dolor sit amet pretium cras id dui pellentesque ornare. Quisque malesuada.",
                  style: TextStyle(fontSize: 13, fontWeight: .w400),
                  textAlign: .center,
                ),
              ],
            ),
          ),
        );
      },
    ).then((value) {
      context.go(AppRouteName.loginScreen);
    });
  }
}
