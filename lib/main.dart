import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/di/di.dart';
import 'package:flutter_application_2/router/app_router.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      routerConfig: AppRoutes().router,
    );
  }
}

