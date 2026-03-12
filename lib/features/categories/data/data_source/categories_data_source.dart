
import 'package:dio/dio.dart';
import 'package:flutter_application_2/features/categories/data/models/category_data.dart';
import 'package:retrofit/retrofit.dart';

part 'categories_data_source.g.dart';

@RestApi()
abstract class CategoriesDataSource {
  factory CategoriesDataSource(Dio dio) = _CategoriesDataSource;

  @GET('api/json/v1/1/categories.php')
  Future<CategoryData> getCategories();
}