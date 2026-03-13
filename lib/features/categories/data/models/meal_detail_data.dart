import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_detail_data.freezed.dart';
part 'meal_detail_data.g.dart';

@freezed
sealed class MealDetailData with _$MealDetailData {
  const factory MealDetailData({
    @Default([]) List<MealDetailElementData> meals,
  }) = _MealDetailData;

  factory MealDetailData.fromJson(Map<String, dynamic> json) =>
      _$MealDetailDataFromJson(json);
}

@freezed
sealed class MealDetailElementData with _$MealDetailElementData {
  const factory MealDetailElementData({
    @Default('') String idMeal,
    @Default('') String strMeal,
    @Default('') String strMealAlternate,
    @Default('') String strCategory,
    @Default('') String strArea,
    @Default('') String strInstructions,
    @Default('') String strMealThumb,
    @Default('') String strTags,
    @Default('') String strYoutube,
    @Default('') String strIngredient1,
    @Default('') String strIngredient2,
    @Default('') String strIngredient3,
    @Default('') String strIngredient4,
    @Default('') String strIngredient5,
    @Default('') String strIngredient6,
    @Default('') String strIngredient7,
    @Default('') String strIngredient8,
    @Default('') String strIngredient9,
    @Default('') String strIngredient10,
    @Default('') String strIngredient11,
    @Default('') String strIngredient12,
    @Default('') String strIngredient13,
    @Default('') String strIngredient14,
    @Default('') String strIngredient15,
    @Default('') String strIngredient16,
    @Default('') String strIngredient17,
    @Default('') String strIngredient18,
    @Default('') String strIngredient19,
    @Default('') String strIngredient20,
    @Default('') String strMeasure1,
    @Default('') String strMeasure2,
    @Default('') String strMeasure3,
    @Default('') String strMeasure4,
    @Default('') String strMeasure5,
    @Default('') String strMeasure6,
    @Default('') String strMeasure7,
    @Default('') String strMeasure8,
    @Default('') String strMeasure9,
    @Default('') String strMeasure10,
    @Default('') String strMeasure11,
    @Default('') String strMeasure12,
    @Default('') String strMeasure13,
    @Default('') String strMeasure14,
    @Default('') String strMeasure15,
    @Default('') String strMeasure16,
    @Default('') String strMeasure17,
    @Default('') String strMeasure18,
    @Default('') String strMeasure19,
    @Default('') String strMeasure20,
    @Default('') String strSource,
    @Default('') String strImageSource,
    @Default('') String strCreativeCommonsConfirmed,
    @Default('') String dateModified,
  }) = _MealDetailElementData;

  factory MealDetailElementData.fromJson(Map<String, dynamic> json) =>
      _$MealDetailElementDataFromJson(json);
}
