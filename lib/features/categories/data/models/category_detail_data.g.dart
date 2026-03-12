// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_detail_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryDetailData _$CategoryDetailDataFromJson(Map<String, dynamic> json) =>
    _CategoryDetailData(
      meals:
          (json['meals'] as List<dynamic>?)
              ?.map(
                (e) => CategoryDetailElementData.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CategoryDetailDataToJson(_CategoryDetailData instance) =>
    <String, dynamic>{'meals': instance.meals};

_CategoryDetailElementData _$CategoryDetailElementDataFromJson(
  Map<String, dynamic> json,
) => _CategoryDetailElementData(
  strMeal: json['strMeal'] as String? ?? '',
  strMealThumb: json['strMealThumb'] as String? ?? '',
  idMeal: json['idMeal'] as String? ?? '',
);

Map<String, dynamic> _$CategoryDetailElementDataToJson(
  _CategoryDetailElementData instance,
) => <String, dynamic>{
  'strMeal': instance.strMeal,
  'strMealThumb': instance.strMealThumb,
  'idMeal': instance.idMeal,
};
