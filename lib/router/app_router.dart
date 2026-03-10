import 'package:flutter/material.dart';
import 'package:flutter_application_2/features/auth/presentation/login_screen.dart';
import 'package:flutter_application_2/features/onboarding/presentation/pages/launcher_screen.dart';
import 'package:flutter_application_2/features/onboarding/presentation/pages/on_boarding_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouteName {
  AppRouteName._();

  static const String initial = '/';
  static const String onboardingScreen = '/onboarding';
  static const String loginScreen = "/login";

  // Nested Key
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
}

class AppRoutes {
  static final AppRoutes _singleton = AppRoutes._internal();

  factory AppRoutes() {
    return _singleton;
  }

  AppRoutes._internal();

  /// Khai báo các màn hình mới tại đây

  GoRouter router = GoRouter(
    initialLocation: AppRouteName.initial,
    navigatorKey: AppRouteName.navigatorKey,
    routes: <RouteBase>[
      GoRoute(
        path: AppRouteName.initial,
        builder: (context, state) => LauncherScreen(),
      ),
      GoRoute(
        path: AppRouteName.onboardingScreen,
        builder: (context, state) => OnBoardingScreen(),
      ),
      GoRoute(
        path: AppRouteName.loginScreen,
        builder: (context, state) => LoginScreen(),
      ),
    ],
  );
}
