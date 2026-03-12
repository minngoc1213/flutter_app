// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryData {

 List<CategoryElementData> get categories;
/// Create a copy of CategoryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDataCopyWith<CategoryData> get copyWith => _$CategoryDataCopyWithImpl<CategoryData>(this as CategoryData, _$identity);

  /// Serializes this CategoryData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryData&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'CategoryData(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoryDataCopyWith<$Res>  {
  factory $CategoryDataCopyWith(CategoryData value, $Res Function(CategoryData) _then) = _$CategoryDataCopyWithImpl;
@useResult
$Res call({
 List<CategoryElementData> categories
});




}
/// @nodoc
class _$CategoryDataCopyWithImpl<$Res>
    implements $CategoryDataCopyWith<$Res> {
  _$CategoryDataCopyWithImpl(this._self, this._then);

  final CategoryData _self;
  final $Res Function(CategoryData) _then;

/// Create a copy of CategoryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryElementData>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryData].
extension CategoryDataPatterns on CategoryData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryData value)  $default,){
final _that = this;
switch (_that) {
case _CategoryData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryData value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryElementData> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryData() when $default != null:
return $default(_that.categories);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryElementData> categories)  $default,) {final _that = this;
switch (_that) {
case _CategoryData():
return $default(_that.categories);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryElementData> categories)?  $default,) {final _that = this;
switch (_that) {
case _CategoryData() when $default != null:
return $default(_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryData implements CategoryData {
  const _CategoryData({final  List<CategoryElementData> categories = const []}): _categories = categories;
  factory _CategoryData.fromJson(Map<String, dynamic> json) => _$CategoryDataFromJson(json);

 final  List<CategoryElementData> _categories;
@override@JsonKey() List<CategoryElementData> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CategoryData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDataCopyWith<_CategoryData> get copyWith => __$CategoryDataCopyWithImpl<_CategoryData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryData&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoryData(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$CategoryDataCopyWith<$Res> implements $CategoryDataCopyWith<$Res> {
  factory _$CategoryDataCopyWith(_CategoryData value, $Res Function(_CategoryData) _then) = __$CategoryDataCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryElementData> categories
});




}
/// @nodoc
class __$CategoryDataCopyWithImpl<$Res>
    implements _$CategoryDataCopyWith<$Res> {
  __$CategoryDataCopyWithImpl(this._self, this._then);

  final _CategoryData _self;
  final $Res Function(_CategoryData) _then;

/// Create a copy of CategoryData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(_CategoryData(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryElementData>,
  ));
}


}


/// @nodoc
mixin _$CategoryElementData {

 String get idCategory; String get strCategory; String get strCategoryThumb; String get strCategoryDescription;
/// Create a copy of CategoryElementData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryElementDataCopyWith<CategoryElementData> get copyWith => _$CategoryElementDataCopyWithImpl<CategoryElementData>(this as CategoryElementData, _$identity);

  /// Serializes this CategoryElementData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryElementData&&(identical(other.idCategory, idCategory) || other.idCategory == idCategory)&&(identical(other.strCategory, strCategory) || other.strCategory == strCategory)&&(identical(other.strCategoryThumb, strCategoryThumb) || other.strCategoryThumb == strCategoryThumb)&&(identical(other.strCategoryDescription, strCategoryDescription) || other.strCategoryDescription == strCategoryDescription));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idCategory,strCategory,strCategoryThumb,strCategoryDescription);

@override
String toString() {
  return 'CategoryElementData(idCategory: $idCategory, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
}


}

/// @nodoc
abstract mixin class $CategoryElementDataCopyWith<$Res>  {
  factory $CategoryElementDataCopyWith(CategoryElementData value, $Res Function(CategoryElementData) _then) = _$CategoryElementDataCopyWithImpl;
@useResult
$Res call({
 String idCategory, String strCategory, String strCategoryThumb, String strCategoryDescription
});




}
/// @nodoc
class _$CategoryElementDataCopyWithImpl<$Res>
    implements $CategoryElementDataCopyWith<$Res> {
  _$CategoryElementDataCopyWithImpl(this._self, this._then);

  final CategoryElementData _self;
  final $Res Function(CategoryElementData) _then;

/// Create a copy of CategoryElementData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idCategory = null,Object? strCategory = null,Object? strCategoryThumb = null,Object? strCategoryDescription = null,}) {
  return _then(_self.copyWith(
idCategory: null == idCategory ? _self.idCategory : idCategory // ignore: cast_nullable_to_non_nullable
as String,strCategory: null == strCategory ? _self.strCategory : strCategory // ignore: cast_nullable_to_non_nullable
as String,strCategoryThumb: null == strCategoryThumb ? _self.strCategoryThumb : strCategoryThumb // ignore: cast_nullable_to_non_nullable
as String,strCategoryDescription: null == strCategoryDescription ? _self.strCategoryDescription : strCategoryDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryElementData].
extension CategoryElementDataPatterns on CategoryElementData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryElementData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryElementData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryElementData value)  $default,){
final _that = this;
switch (_that) {
case _CategoryElementData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryElementData value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryElementData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String idCategory,  String strCategory,  String strCategoryThumb,  String strCategoryDescription)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryElementData() when $default != null:
return $default(_that.idCategory,_that.strCategory,_that.strCategoryThumb,_that.strCategoryDescription);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String idCategory,  String strCategory,  String strCategoryThumb,  String strCategoryDescription)  $default,) {final _that = this;
switch (_that) {
case _CategoryElementData():
return $default(_that.idCategory,_that.strCategory,_that.strCategoryThumb,_that.strCategoryDescription);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String idCategory,  String strCategory,  String strCategoryThumb,  String strCategoryDescription)?  $default,) {final _that = this;
switch (_that) {
case _CategoryElementData() when $default != null:
return $default(_that.idCategory,_that.strCategory,_that.strCategoryThumb,_that.strCategoryDescription);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryElementData implements CategoryElementData {
  const _CategoryElementData({this.idCategory = '', this.strCategory = '', this.strCategoryThumb = '', this.strCategoryDescription = ''});
  factory _CategoryElementData.fromJson(Map<String, dynamic> json) => _$CategoryElementDataFromJson(json);

@override@JsonKey() final  String idCategory;
@override@JsonKey() final  String strCategory;
@override@JsonKey() final  String strCategoryThumb;
@override@JsonKey() final  String strCategoryDescription;

/// Create a copy of CategoryElementData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryElementDataCopyWith<_CategoryElementData> get copyWith => __$CategoryElementDataCopyWithImpl<_CategoryElementData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryElementDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryElementData&&(identical(other.idCategory, idCategory) || other.idCategory == idCategory)&&(identical(other.strCategory, strCategory) || other.strCategory == strCategory)&&(identical(other.strCategoryThumb, strCategoryThumb) || other.strCategoryThumb == strCategoryThumb)&&(identical(other.strCategoryDescription, strCategoryDescription) || other.strCategoryDescription == strCategoryDescription));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idCategory,strCategory,strCategoryThumb,strCategoryDescription);

@override
String toString() {
  return 'CategoryElementData(idCategory: $idCategory, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
}


}

/// @nodoc
abstract mixin class _$CategoryElementDataCopyWith<$Res> implements $CategoryElementDataCopyWith<$Res> {
  factory _$CategoryElementDataCopyWith(_CategoryElementData value, $Res Function(_CategoryElementData) _then) = __$CategoryElementDataCopyWithImpl;
@override @useResult
$Res call({
 String idCategory, String strCategory, String strCategoryThumb, String strCategoryDescription
});




}
/// @nodoc
class __$CategoryElementDataCopyWithImpl<$Res>
    implements _$CategoryElementDataCopyWith<$Res> {
  __$CategoryElementDataCopyWithImpl(this._self, this._then);

  final _CategoryElementData _self;
  final $Res Function(_CategoryElementData) _then;

/// Create a copy of CategoryElementData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idCategory = null,Object? strCategory = null,Object? strCategoryThumb = null,Object? strCategoryDescription = null,}) {
  return _then(_CategoryElementData(
idCategory: null == idCategory ? _self.idCategory : idCategory // ignore: cast_nullable_to_non_nullable
as String,strCategory: null == strCategory ? _self.strCategory : strCategory // ignore: cast_nullable_to_non_nullable
as String,strCategoryThumb: null == strCategoryThumb ? _self.strCategoryThumb : strCategoryThumb // ignore: cast_nullable_to_non_nullable
as String,strCategoryDescription: null == strCategoryDescription ? _self.strCategoryDescription : strCategoryDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
