import 'package:flutter_application_2/core/error/failure.dart';
import 'package:flutter_application_2/core/use_case/use_case.dart';
import 'package:flutter_application_2/features/categories/data/repositories/meal_repository_impl.dart';
import 'package:flutter_application_2/features/categories/domain/entities/meal_detail_entities.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetMealDetailsUseCase extends UseCase<MealDetailEntities, String> {
  final MealRepositoryImpl mealRepositoryImpl;

  GetMealDetailsUseCase({required this.mealRepositoryImpl});
  @override
  Future<Either<Failure, MealDetailEntities>> call(String id) async {
    return mealRepositoryImpl.getMealDetails(id);
  }
}
