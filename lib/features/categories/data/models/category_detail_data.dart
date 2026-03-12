import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_detail_data.freezed.dart';
part 'category_detail_data.g.dart';

@freezed
sealed class CategoryDetailData with _$CategoryDetailData {
  const factory CategoryDetailData({
    @Default([]) List<CategoryDetailElementData> meals,
  }) = _CategoryDetailData;

  factory CategoryDetailData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailDataFromJson(json);
}

@freezed
sealed class CategoryDetailElementData with _$CategoryDetailElementData {
  const factory CategoryDetailElementData({
    @Default('') String strMeal,
    @Default('') String strMealThumb,
    @Default('') String idMeal,
  }) = _CategoryDetailElementData;

  factory CategoryDetailElementData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailElementDataFromJson(json);
}
