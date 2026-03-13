import 'package:flutter/material.dart';
import 'package:flutter_application_2/di/di.dart';
import 'package:flutter_application_2/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_application_2/features/auth/presentation/pages/login_screen.dart';
import 'package:flutter_application_2/features/auth/presentation/pages/register_screen.dart';
import 'package:flutter_application_2/features/categories/presentation/argument/category_argument.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/category_details_bloc.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/meal_details_bloc.dart';
import 'package:flutter_application_2/features/categories/presentation/pages/category_detail_screen.dart';
import 'package:flutter_application_2/features/categories/presentation/pages/meal_detail_screen.dart';
import 'package:flutter_application_2/home_app.dart';
import 'package:flutter_application_2/features/onboarding/presentation/pages/on_boarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouteName {
  AppRouteName._();

  static const String initial = '/';
  static const String onboardingScreen = '/onboarding';
  static const String loginScreen = "/login";
  static const String registerScreen = "/register";
  static const String homeScreen = "/home";
  static const String categoryDetailScreen = "/category-detail";
  static const String mealDetailsScreen = "/meal-detail";

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
        builder: (context, state) => HomeApp(),
      ),
      GoRoute(
        path: AppRouteName.onboardingScreen,
        builder: (context, state) => OnBoardingScreen(),
      ),
      GoRoute(
        path: AppRouteName.loginScreen,
        builder: (context, state) =>
            BlocProvider.value(value: sl.get<AuthBloc>(), child: LoginScreen()),
      ),
      GoRoute(
        path: AppRouteName.registerScreen,
        builder: (context, state) => BlocProvider.value(
          value: sl.get<AuthBloc>(),
          child: RegisterScreen(),
        ),
      ),
      GoRoute(
        path: AppRouteName.homeScreen,
        builder: (context, state) => HomeApp(),
      ),
      GoRoute(
        path: AppRouteName.categoryDetailScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => sl.get<CategoryDetailsBloc>(),
          child: CategoryDetailScreen(
            state.extra is CategoryArgument
                ? state.extra as CategoryArgument
                : CategoryArgument(category: "", categories: List.empty()),
          ),
        ),
      ),
      GoRoute(
        path: AppRouteName.mealDetailsScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => sl.get<MealDetailsBloc>(),
          child: MealDetailScreen(
            state.extra is String ? state.extra as String : "",
          ),
        ),
      ),
    ],
  );
}
