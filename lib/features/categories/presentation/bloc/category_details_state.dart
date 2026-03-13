import 'package:flutter_application_2/features/categories/domain/entities/category_detail_entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_details_state.freezed.dart';

@freezed
sealed class CategoryDetailsState with _$CategoryDetailsState {
  const factory CategoryDetailsState({
    @Default(null) CategoryDetailEntities? meals,
    @Default("") String category,
  }) = _CategoryDetailsState;
}
