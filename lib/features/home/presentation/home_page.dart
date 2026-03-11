import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/color/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Container(width: 100, height: 870, color: AppColors.pink)],
      ),
    );
  }
}
