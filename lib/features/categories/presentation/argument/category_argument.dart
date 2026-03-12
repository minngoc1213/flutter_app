import 'package:flutter_application_2/features/categories/domain/entities/category_entities.dart';

class CategoryArgument {
  CategoryArgument({required this.category, required this.categories});
  String category;
  List<CategoryElementEntities> categories;
}