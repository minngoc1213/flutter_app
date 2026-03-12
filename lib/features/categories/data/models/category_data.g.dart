// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) =>
    _CategoryData(
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map(
                (e) => CategoryElementData.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CategoryDataToJson(_CategoryData instance) =>
    <String, dynamic>{'categories': instance.categories};

_CategoryElementData _$CategoryElementDataFromJson(Map<String, dynamic> json) =>
    _CategoryElementData(
      idCategory: json['idCategory'] as String? ?? '',
      strCategory: json['strCategory'] as String? ?? '',
      strCategoryThumb: json['strCategoryThumb'] as String? ?? '',
      strCategoryDescription: json['strCategoryDescription'] as String? ?? '',
    );

Map<String, dynamic> _$CategoryElementDataToJson(
  _CategoryElementData instance,
) => <String, dynamic>{
  'idCategory': instance.idCategory,
  'strCategory': instance.strCategory,
  'strCategoryThumb': instance.strCategoryThumb,
  'strCategoryDescription': instance.strCategoryDescription,
};
