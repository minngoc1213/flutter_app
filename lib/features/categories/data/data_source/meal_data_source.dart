import 'package:dio/dio.dart';
import 'package:flutter_application_2/features/categories/data/models/meal_detail_data.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'meal_data_source.g.dart';

@RestApi()
abstract class MealDataSource {
  factory MealDataSource(Dio dio) = _MealDataSource;

  @GET('/api/json/v1/1/lookup.php')
  Future<MealDetailData> getMealDetails(@Query('i') String id);

  @GET('/api/json/v1/1/random.php')
  Future<MealDetailData> getRandomMeal();
}