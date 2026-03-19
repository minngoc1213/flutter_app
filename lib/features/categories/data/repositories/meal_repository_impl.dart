import 'package:flutter_application_2/core/error/failure.dart';
import 'package:flutter_application_2/core/use_case/use_case.dart';
import 'package:flutter_application_2/features/categories/data/data_source/meal_data_source.dart';
import 'package:flutter_application_2/features/categories/domain/entities/meal_detail_entities.dart';
import 'package:flutter_application_2/features/categories/domain/repositories/meal_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class MealRepositoryImpl extends MealRepository {
  final MealDataSource mealDataSource;

  MealRepositoryImpl({required this.mealDataSource});

  @override
  Future<Either<Failure, MealDetailEntities>> getMealDetails(String id) async {
    try {
      final response = await mealDataSource.getMealDetails(id);
      final meals = response.meals
          .map(
            (e) => MealDetailElementEntities(
              idMeal: e.idMeal,
              strMeal: e.strMeal,
              strMealAlternate: e.strMealAlternate,
              strCategory: e.strCategory,
              strArea: e.strArea,
              strInstructions: e.strInstructions,
              strMealThumb: e.strMealThumb,
              strTags: e.strTags,
              strYoutube: e.strYoutube,
              strIngredient: [
                if (e.strIngredient1.isNotEmpty) e.strIngredient1,
                if (e.strIngredient2.isNotEmpty) e.strIngredient2,
                if (e.strIngredient3.isNotEmpty) e.strIngredient3,
                if (e.strIngredient4.isNotEmpty) e.strIngredient4,
                if (e.strIngredient5.isNotEmpty) e.strIngredient5,
                if (e.strIngredient6.isNotEmpty) e.strIngredient6,
                if (e.strIngredient7.isNotEmpty) e.strIngredient7,
                if (e.strIngredient8.isNotEmpty) e.strIngredient8,
                if (e.strIngredient9.isNotEmpty) e.strIngredient9,
                if (e.strIngredient10.isNotEmpty) e.strIngredient10,
                if (e.strIngredient11.isNotEmpty) e.strIngredient11,
                if (e.strIngredient12.isNotEmpty) e.strIngredient12,
                if (e.strIngredient13.isNotEmpty) e.strIngredient13,
                if (e.strIngredient14.isNotEmpty) e.strIngredient14,
                if (e.strIngredient15.isNotEmpty) e.strIngredient15,
                if (e.strIngredient16.isNotEmpty) e.strIngredient16,
                if (e.strIngredient17.isNotEmpty) e.strIngredient17,
                if (e.strIngredient18.isNotEmpty) e.strIngredient18,
                if (e.strIngredient19.isNotEmpty) e.strIngredient19,
                if (e.strIngredient20.isNotEmpty) e.strIngredient20,
              ],
              strMeasure: [
                if (e.strMeasure1.isNotEmpty) e.strMeasure1,
                if (e.strMeasure2.isNotEmpty) e.strMeasure2,
                if (e.strMeasure3.isNotEmpty) e.strMeasure3,
                if (e.strMeasure4.isNotEmpty) e.strMeasure4,
                if (e.strMeasure5.isNotEmpty) e.strMeasure5,
                if (e.strMeasure6.isNotEmpty) e.strMeasure6,
                if (e.strMeasure7.isNotEmpty) e.strMeasure7,
                if (e.strMeasure8.isNotEmpty) e.strMeasure8,
                if (e.strMeasure9.isNotEmpty) e.strMeasure9,
                if (e.strMeasure10.isNotEmpty) e.strMeasure10,
                if (e.strMeasure11.isNotEmpty) e.strMeasure11,
                if (e.strMeasure12.isNotEmpty) e.strMeasure12,
                if (e.strMeasure13.isNotEmpty) e.strMeasure13,
                if (e.strMeasure14.isNotEmpty) e.strMeasure14,
                if (e.strMeasure15.isNotEmpty) e.strMeasure15,
                if (e.strMeasure16.isNotEmpty) e.strMeasure16,
                if (e.strMeasure17.isNotEmpty) e.strMeasure17,
                if (e.strMeasure18.isNotEmpty) e.strMeasure18,
                if (e.strMeasure19.isNotEmpty) e.strMeasure19,
                if (e.strMeasure20.isNotEmpty) e.strMeasure20,
              ],
              strSource: e.strSource,
              strImageSource: e.strImageSource,
              strCreativeCommonsConfirmed: e.strCreativeCommonsConfirmed,
              dateModified: e.dateModified,
            ),
          )
          .toList();
      return Right(MealDetailEntities(meals: meals));
    } catch (e) {
      print(e);
      return Left(Failure(message: e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, MealDetailEntities>> getRandomMeal({required NoParams request}) async {
    try {
      final response = await mealDataSource.getRandomMeal();
      final meals = response.meals
          .map(
            (e) => MealDetailElementEntities(
              idMeal: e.idMeal,
              strMeal: e.strMeal,
              strMealAlternate: e.strMealAlternate,
              strCategory: e.strCategory,
              strArea: e.strArea,
              strInstructions: e.strInstructions,
              strMealThumb: e.strMealThumb,
              strTags: e.strTags,
              strYoutube: e.strYoutube,
              strIngredient: [
                if (e.strIngredient1.isNotEmpty) e.strIngredient1,
                if (e.strIngredient2.isNotEmpty) e.strIngredient2,
                if (e.strIngredient3.isNotEmpty) e.strIngredient3,
                if (e.strIngredient4.isNotEmpty) e.strIngredient4,
                if (e.strIngredient5.isNotEmpty) e.strIngredient5,
                if (e.strIngredient6.isNotEmpty) e.strIngredient6,
                if (e.strIngredient7.isNotEmpty) e.strIngredient7,
                if (e.strIngredient8.isNotEmpty) e.strIngredient8,
                if (e.strIngredient9.isNotEmpty) e.strIngredient9,
                if (e.strIngredient10.isNotEmpty) e.strIngredient10,
                if (e.strIngredient11.isNotEmpty) e.strIngredient11,
                if (e.strIngredient12.isNotEmpty) e.strIngredient12,
                if (e.strIngredient13.isNotEmpty) e.strIngredient13,
                if (e.strIngredient14.isNotEmpty) e.strIngredient14,
                if (e.strIngredient15.isNotEmpty) e.strIngredient15,
                if (e.strIngredient16.isNotEmpty) e.strIngredient16,
                if (e.strIngredient17.isNotEmpty) e.strIngredient17,
                if (e.strIngredient18.isNotEmpty) e.strIngredient18,
                if (e.strIngredient19.isNotEmpty) e.strIngredient19,
                if (e.strIngredient20.isNotEmpty) e.strIngredient20,
              ],
              strMeasure: [
                if (e.strMeasure1.isNotEmpty) e.strMeasure1,
                if (e.strMeasure2.isNotEmpty) e.strMeasure2,
                if (e.strMeasure3.isNotEmpty) e.strMeasure3,
                if (e.strMeasure4.isNotEmpty) e.strMeasure4,
                if (e.strMeasure5.isNotEmpty) e.strMeasure5,
                if (e.strMeasure6.isNotEmpty) e.strMeasure6,
                if (e.strMeasure7.isNotEmpty) e.strMeasure7,
                if (e.strMeasure8.isNotEmpty) e.strMeasure8,
                if (e.strMeasure9.isNotEmpty) e.strMeasure9,
                if (e.strMeasure10.isNotEmpty) e.strMeasure10,
                if (e.strMeasure11.isNotEmpty) e.strMeasure11,
                if (e.strMeasure12.isNotEmpty) e.strMeasure12,
                if (e.strMeasure13.isNotEmpty) e.strMeasure13,
                if (e.strMeasure14.isNotEmpty) e.strMeasure14,
                if (e.strMeasure15.isNotEmpty) e.strMeasure15,
                if (e.strMeasure16.isNotEmpty) e.strMeasure16,
                if (e.strMeasure17.isNotEmpty) e.strMeasure17,
                if (e.strMeasure18.isNotEmpty) e.strMeasure18,
                if (e.strMeasure19.isNotEmpty) e.strMeasure19,
                if (e.strMeasure20.isNotEmpty) e.strMeasure20,
              ],
              strSource: e.strSource,
              strImageSource: e.strImageSource,
              strCreativeCommonsConfirmed: e.strCreativeCommonsConfirmed,
              dateModified: e.dateModified,
            ),
          )
          .toList();
      return Right(MealDetailEntities(meals: meals));
    } catch (e) {
      print(e);
      return Left(Failure(message: e.toString()));
    }
  }
}
