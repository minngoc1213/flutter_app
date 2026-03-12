import 'package:flutter/material.dart';

class MealDetailScreen extends StatefulWidget {
  const MealDetailScreen(this.id, {super.key});
  final String id;

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}