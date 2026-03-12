import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_detail_entities.freezed.dart';

@freezed
sealed class CategoryDetailEntities with _$CategoryDetailEntities {
  const factory CategoryDetailEntities({
    @Default([]) List<CategoryDetailElementEntities> meals,
  }) = _CategoryDetailEntities;
}

@freezed
sealed class CategoryDetailElementEntities with _$CategoryDetailElementEntities {
  const factory CategoryDetailElementEntities({
    @Default('') String strMeal,
    @Default('') String strMealThumb,
    @Default('') String idMeal,
  }) = _CategoryDetailElementEntities;
}
