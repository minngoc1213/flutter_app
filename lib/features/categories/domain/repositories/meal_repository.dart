import 'package:flutter_application_2/core/error/failure.dart';
import 'package:flutter_application_2/features/categories/domain/entities/meal_detail_entities.dart';
import 'package:fpdart/fpdart.dart';

abstract class MealRepository {
    Future<Either<Failure, MealDetailEntities>> getMealDetails(String id);

}