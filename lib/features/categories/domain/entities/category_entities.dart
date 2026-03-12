import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_entities.freezed.dart';


@freezed
sealed class CategoryEntities with _$CategoryEntities {
  const factory CategoryEntities({
    @Default([]) List<CategoryElementEntities> categories,
  }) = _CategoryEntities;
}

@freezed
sealed class CategoryElementEntities with _$CategoryElementEntities {
  const factory CategoryElementEntities({
    @Default('') String idCategory,
    @Default('') String strCategory,
    @Default('') String strCategoryThumb,
    @Default('') String strCategoryDescription,
  }) = _CategoryElementEntities;


}
