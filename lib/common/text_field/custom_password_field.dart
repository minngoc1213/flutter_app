import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/text_field/custom_text_field.dart';
import 'package:flutter_application_2/core/color/app_color.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key,
    this.controller,
    this.color = AppColors.pink,
    this.radius = 18,
    this.label = '',
    this.fontSize,
    this.fontWeight = FontWeight.w500,});

  final TextEditingController? controller;
  final Color? color;
  final double radius;
  final String label;
  final double? fontSize;
  final FontWeight? fontWeight;
  @override
  State<StatefulWidget> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _isObscured = true;

  void _toggleVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: widget.controller,
      color: widget.color,
      obscureText: _isObscured,
      radius: widget.radius,
      label: widget.label,
      fontSize: widget.fontSize,
      fontWeight: widget.fontWeight,
      suffixIcon: IconButton(
        onPressed: () {
          _toggleVisibility();
        },
        icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
      ),
    );
  }
}
