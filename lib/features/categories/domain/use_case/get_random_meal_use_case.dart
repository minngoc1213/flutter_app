import 'package:flutter_application_2/core/error/failure.dart';
import 'package:flutter_application_2/core/use_case/use_case.dart';
import 'package:flutter_application_2/features/categories/data/repositories/meal_repository_impl.dart';
import 'package:flutter_application_2/features/categories/domain/entities/meal_detail_entities.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRandomMealUseCase extends UseCase<MealDetailEntities, NoParams> {
  late final MealRepositoryImpl mealRepositoryImpl;

  GetRandomMealUseCase({required this.mealRepositoryImpl});
  
  @override
  Future<Either<Failure, MealDetailEntities>> call(NoParams params) async {
    return mealRepositoryImpl.getRandomMeal(request: params);
  }
  
}