import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LauncherScreen extends StatelessWidget {
  const LauncherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String logoDir = "assets/svg/logo.svg";
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(logoDir),
            Text("DishDash"),
          ],
        ),
      ),
    );
  }
}
