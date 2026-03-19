import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/row/custom_setting_row.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/core/local_state/shared_preferences.dart';
import 'package:flutter_application_2/di/di.dart';
import 'package:flutter_application_2/features/profile/cubit/setting_cubit.dart';
import 'package:flutter_application_2/router/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProfilePageProvider extends StatelessWidget {
  const ProfilePageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<SettingCubit>(),
      child: const _ProfilePage(),
    );
  }
}

class _ProfilePage extends StatelessWidget {
  const _ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.redPink,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 33),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 15,
          children: [
            CustomSettingRow(
              label: "Notification",
              preIcon: Icon(
                Icons.notifications,
                size: 35,
                color: AppColors.redPink,
              ),
            ),
            CustomSettingRow(
              label: "Help Center",
              preIcon: Icon(
                Icons.headphones,
                size: 35,
                color: AppColors.redPink,
              ),
            ),
            CustomSettingRow(
              label: "Privacy Policy",
              preIcon: Icon(
                Icons.privacy_tip,
                size: 35,
                color: AppColors.redPink,
              ),
            ),
            CustomSettingRow(
              label: "Language",
              preIcon: Icon(Icons.language, size: 35, color: AppColors.redPink),
            ),
            CustomSettingRow(
              callback: () {
                context.read<SettingCubit>().toggleTheme();
              },
              label: "Turn Dark Theme",
              preIcon: Icon(
                Icons.change_circle,
                size: 35,
                color: AppColors.redPink,
              ),
              hasPostIcon: false,
            ),
            CustomSettingRow(
              callback: () {
                AppPrefs().setIsLogged(false);
                context.go(AppRouteName.loginScreen);
              },
              label: "Log Out",
              preIcon: Icon(Icons.logout, size: 35, color: AppColors.redPink),
              hasPostIcon: false,
            ),
            Text(
              "Delete Account",
              style: TextStyle(
                fontSize: 15,
                fontWeight: .w500,
                color: AppColors.sweetPink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
