import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/text_field/custom_text_field.dart';
import 'package:flutter_application_2/core/color/app_color.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key,
    this.controller,
    this.color = AppColors.pink,
    this.radius = 28,
    this.label = '',
    this.fontSize,
    this.fontWeight = FontWeight.w500,
    this.contentPaddingHorizontal = 25,
    this.contentPaddingVertical = 10,
    this.onTap,
  });

  final TextEditingController? controller;
  final Color? color;
  final double radius;
  final String label;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double contentPaddingHorizontal;
  final double contentPaddingVertical;
  final Function()? onTap;

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
      contentPaddingHorizontal: widget.contentPaddingHorizontal,
      contentPaddingVertical: widget.contentPaddingVertical,
      suffixIcon: IconButton(
        onPressed: () {
          _toggleVisibility();
        },
        icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
      ),
    );
  }
}
