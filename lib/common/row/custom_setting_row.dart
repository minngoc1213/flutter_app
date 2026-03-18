import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/color/app_color.dart';

class CustomSettingRow extends StatelessWidget {
  const CustomSettingRow({
    super.key,
    this.label = "",
    this.preIcon = const Icon(Icons.settings),
    this.hasPostIcon = true,
  });
  final String label;
  final Icon preIcon;
  final bool hasPostIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        preIcon,
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Spacer(),
        if (hasPostIcon) Icon(Icons.arrow_right, size: 35, color: AppColors.redPink,),
      ],
    );
  }
}
