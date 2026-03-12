import 'package:flutter_application_2/core/error/failure.dart';
import 'package:flutter_application_2/core/use_case/use_case.dart';
import 'package:flutter_application_2/features/categories/data/data_source/category_data_source.dart';
import 'package:flutter_application_2/features/categories/domain/entities/category_detail_entities.dart';
import 'package:flutter_application_2/features/categories/domain/entities/category_entities.dart';
import 'package:flutter_application_2/features/categories/domain/repositories/category_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryDataSource categoryDataSource;

  CategoryRepositoryImpl({required this.categoryDataSource});

  @override
  Future<Either<Failure, CategoryEntities>> getCategories({
    required NoParams request,
  }) async {
    try {
      final response = await categoryDataSource.getCategories();

      final categories = response.categories
          .map(
            (e) => CategoryElementEntities(
              idCategory: e.idCategory,
              strCategory: e.strCategory,
              strCategoryThumb: e.strCategoryThumb,
              strCategoryDescription: e.strCategoryDescription,
            ),
          )
          .toList();

      return Right(CategoryEntities(categories: categories));
    } catch (e) {
      print(e);
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, CategoryDetailEntities>> getCategoryDetails(
    String category,
  ) async {
    try {
      final response = await categoryDataSource.getCategoryDetails(category);

      final meals = response.meals
          .map(
            (e) => CategoryDetailElementEntities(
              strMeal: e.strMeal,
              strMealThumb: e.strMealThumb,
              idMeal: e.idMeal,
            ),
          )
          .toList();

      return Right(CategoryDetailEntities(meals: meals));
    } catch (e) {
      print(e);
      return Left(Failure(message: e.toString()));
    }
  }
}
