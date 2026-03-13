
import 'package:flutter_application_2/features/categories/domain/entities/meal_detail_entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_details_state.freezed.dart';

@freezed
sealed class MealDetailsState with _$MealDetailsState {
  const factory MealDetailsState({
    @Default(null) MealDetailEntities? meals,
  }) = _MealDetailsState;
}
