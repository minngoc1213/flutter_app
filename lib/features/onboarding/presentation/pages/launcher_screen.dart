import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/core/local_state/shared_preferences.dart';
import 'package:flutter_application_2/router/app_router.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LauncherScreen extends StatefulWidget {
  const LauncherScreen({super.key});

  @override
  State<LauncherScreen> createState() => _LauncherScreenState();
}

class _LauncherScreenState extends State<LauncherScreen> {
  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  Future<void> changeScreen() async {
    await Future.delayed(Duration(seconds: 2));
    if (AppPrefs().getIsLogged() ?? false) {
      context.go(AppRouteName.homeScreen);
      return;
    }
    context.go(AppRouteName.onboardingScreen);
  }

  @override
  Widget build(BuildContext context) {
    String logoDir = "assets/svg/logo.svg";
    return Scaffold(
      backgroundColor: AppColors.redPink,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(logoDir),
            Text("DishDash", style: TextStyle(fontSize: 64, fontWeight: .w600, color: AppColors.white),),
          ],
        ),
      ),
    );
  }
}
