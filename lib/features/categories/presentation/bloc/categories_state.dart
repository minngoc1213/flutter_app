import 'package:flutter_application_2/features/categories/domain/entities/category_entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_state.freezed.dart';

@freezed
sealed class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    @Default(null) CategoryEntities? categories,
  }) = _CategoriesState;
}
