import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_detail_entities.freezed.dart';

@freezed
sealed class MealDetailEntities with _$MealDetailEntities {
  const factory MealDetailEntities({
    @Default([]) List<MealDetailElementEntities> meals,
  }) = _MealDetailEntities;
}

@freezed
sealed class MealDetailElementEntities with _$MealDetailElementEntities {
  const factory MealDetailElementEntities({
    @Default('') String idMeal,
    @Default('') String strMeal,
    @Default('') String strMealAlternate,
    @Default('') String strCategory,
    @Default('') String strArea,
    @Default('') String strInstructions,
    @Default('') String strMealThumb,
    @Default('') String strTags,
    @Default('') String strYoutube,
    @Default([]) List<String> strIngredient,
    @Default([]) List<String> strMeasure,
    @Default('') String strSource,
    @Default('') String strImageSource,
    @Default('') String strCreativeCommonsConfirmed,
    @Default('') String dateModified,
  }) = _MealDetailElementEntities;

}
