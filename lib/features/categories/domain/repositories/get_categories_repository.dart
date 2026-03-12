
import 'package:flutter_application_2/core/error/failure.dart';
import 'package:flutter_application_2/core/use_case/use_case.dart';
import 'package:flutter_application_2/features/categories/domain/entities/category_entities.dart';
import 'package:fpdart/fpdart.dart';

abstract class GetCategoriesRepository {
  Future<Either<Failure, CategoryEntities>> getCategories({required NoParams request});
}