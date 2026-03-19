import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/color/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.color = AppColors.pink,
    this.obscureText = false,
    this.radius = 28,
    this.label = '',
    this.fontSize,
    this.fontWeight = FontWeight.w500,
    this.suffixIcon,
    this.contentPaddingHorizontal = 25,
    this.contentPaddingVertical = 10,
    this.onTap,
    this.height = 40,
  });
  final TextEditingController? controller;
  final Color? color;
  final bool obscureText;
  final double radius;
  final String label;
  final double? fontSize;
  final FontWeight? fontWeight;
  final IconButton? suffixIcon;
  final double contentPaddingHorizontal;
  final double contentPaddingVertical;
  final Function()? onTap;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: height,
          child: TextField(
            onTap: onTap,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              filled: true,
              fillColor: color,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: contentPaddingHorizontal,
                vertical: contentPaddingVertical,
              ),
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ],
    );
  }
}
