import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/core/local_state/shared_preferences.dart';
import 'package:flutter_application_2/di/di.dart';
import 'package:flutter_application_2/features/profile/cubit/setting_cubit.dart';
import 'package:flutter_application_2/router/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPrefs().init();
  configureDependencies();
  runApp(BlocProvider.value(value: sl<SettingCubit>(), child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    context.read<SettingCubit>().initData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingCubit, SettingState>(
      builder: (context, state) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          routerConfig: AppRoutes().router,
          themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: AppColors.white,
            appBarTheme: AppBarTheme(backgroundColor: AppColors.white),
            dialogTheme: DialogThemeData(backgroundColor: AppColors.white),
          ),
          darkTheme: ThemeData.dark(),
        );
      },
    );
  }
}
