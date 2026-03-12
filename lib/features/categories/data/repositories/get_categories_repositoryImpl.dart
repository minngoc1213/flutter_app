import 'package:flutter_application_2/core/error/failure.dart';
import 'package:flutter_application_2/core/use_case/use_case.dart';
import 'package:flutter_application_2/features/categories/data/data_source/categories_data_source.dart';
import 'package:flutter_application_2/features/categories/domain/entities/category_entities.dart';
import 'package:flutter_application_2/features/categories/domain/repositories/get_categories_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesRepositoryImpl implements GetCategoriesRepository {
  final CategoriesDataSource categoriesDataSource;

  GetCategoriesRepositoryImpl({required this.categoriesDataSource});

  @override
  Future<Either<Failure, CategoryEntities>> getCategories({
    required NoParams request,
  }) async {
    try {
      final response = await categoriesDataSource.getCategories();

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
}
