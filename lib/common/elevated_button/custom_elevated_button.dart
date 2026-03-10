import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/color/app_color.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.backgroundColor = AppColors.pink,
    this.fontSize = 20,
    this.fontWeight = FontWeight.w600,
    this.horizontalPadding = 74,
    this.onPressed,
    this.text = '',
    this.textColor = AppColors.sweetPink,
    this.verticalPadding = 12,
  });

  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double horizontalPadding;
  final double verticalPadding;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
