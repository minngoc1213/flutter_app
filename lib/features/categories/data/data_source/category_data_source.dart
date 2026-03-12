
import 'package:dio/dio.dart';
import 'package:flutter_application_2/features/categories/data/models/category_data.dart';
import 'package:flutter_application_2/features/categories/data/models/category_detail_data.dart';
import 'package:retrofit/retrofit.dart';

part 'category_data_source.g.dart';

@RestApi()
abstract class CategoryDataSource {
  factory CategoryDataSource(Dio dio) = _CategoryDataSource;

  @GET('api/json/v1/1/categories.php')
  Future<CategoryData> getCategories();

  @GET('api/json/v1/1/filter.php')
  Future<CategoryDetailData> getCategoryDetails(@Query('c') String category);

}