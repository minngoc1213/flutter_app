import 'package:flutter_application_2/core/error/failure.dart';
import 'package:flutter_application_2/core/use_case/use_case.dart';
import 'package:flutter_application_2/features/categories/data/repositories/category_repository_impl.dart';
import 'package:flutter_application_2/features/categories/domain/entities/category_detail_entities.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoryDetailsUseCase extends UseCase<CategoryDetailEntities, String> {
  final CategoryRepositoryImpl categoryRepositoryImpl;

  GetCategoryDetailsUseCase({required this.categoryRepositoryImpl});
  @override
  Future<Either<Failure, CategoryDetailEntities>> call(String category) async {
    return categoryRepositoryImpl.getCategoryDetails(category);
  }
}
