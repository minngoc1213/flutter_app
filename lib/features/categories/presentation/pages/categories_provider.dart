import 'package:flutter/material.dart';
import 'package:flutter_application_2/di/di.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/categories_bloc.dart';
import 'package:flutter_application_2/features/categories/presentation/pages/categories_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesProvider extends StatelessWidget {
  const CategoriesProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl.get<CategoriesBloc>(),
      child: const CategoriesPage(),
    );
  }
}
