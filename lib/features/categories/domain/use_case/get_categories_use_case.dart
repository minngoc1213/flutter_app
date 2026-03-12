import 'package:flutter_application_2/core/error/failure.dart';
import 'package:flutter_application_2/core/use_case/use_case.dart';
import 'package:flutter_application_2/features/categories/data/repositories/category_repository_impl.dart';
import 'package:flutter_application_2/features/categories/domain/entities/category_entities.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase extends UseCase<CategoryEntities, NoParams> {
  final CategoryRepositoryImpl getCategoriesRepositoryImpl;

  GetCategoriesUseCase({required this.getCategoriesRepositoryImpl});
  @override
  Future<Either<Failure, CategoryEntities>> call(NoParams params) async {
    return getCategoriesRepositoryImpl.getCategories(request: params);
  }
}
