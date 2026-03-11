import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/color/app_color.dart';

class MessengerPage extends StatelessWidget {
  const MessengerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pink,
      body: Center(child: Text("Messenger Page")),
    );
  }
}
