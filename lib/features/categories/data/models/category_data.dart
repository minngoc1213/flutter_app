import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_data.freezed.dart';
part 'category_data.g.dart';

@freezed
sealed class CategoryData with _$CategoryData {
  const factory CategoryData({
    @Default([]) List<CategoryElementData> categories,
  }) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}

@freezed
sealed class CategoryElementData with _$CategoryElementData {
  const factory CategoryElementData({
    @Default('') String idCategory,
    @Default('') String strCategory,
    @Default('') String strCategoryThumb,
    @Default('') String strCategoryDescription,
  }) = _CategoryElementData;

   factory CategoryElementData.fromJson(Map<String, dynamic> json) =>
      _$CategoryElementDataFromJson(json);
}
