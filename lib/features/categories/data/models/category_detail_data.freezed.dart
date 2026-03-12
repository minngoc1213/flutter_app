// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_detail_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryDetailData {

 List<CategoryDetailElementData> get meals;
/// Create a copy of CategoryDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDetailDataCopyWith<CategoryDetailData> get copyWith => _$CategoryDetailDataCopyWithImpl<CategoryDetailData>(this as CategoryDetailData, _$identity);

  /// Serializes this CategoryDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDetailData&&const DeepCollectionEquality().equals(other.meals, meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(meals));

@override
String toString() {
  return 'CategoryDetailData(meals: $meals)';
}


}

/// @nodoc
abstract mixin class $CategoryDetailDataCopyWith<$Res>  {
  factory $CategoryDetailDataCopyWith(CategoryDetailData value, $Res Function(CategoryDetailData) _then) = _$CategoryDetailDataCopyWithImpl;
@useResult
$Res call({
 List<CategoryDetailElementData> meals
});




}
/// @nodoc
class _$CategoryDetailDataCopyWithImpl<$Res>
    implements $CategoryDetailDataCopyWith<$Res> {
  _$CategoryDetailDataCopyWithImpl(this._self, this._then);

  final CategoryDetailData _self;
  final $Res Function(CategoryDetailData) _then;

/// Create a copy of CategoryDetailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meals = null,}) {
  return _then(_self.copyWith(
meals: null == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<CategoryDetailElementData>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryDetailData].
extension CategoryDetailDataPatterns on CategoryDetailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDetailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDetailData value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryDetailElementData> meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDetailData() when $default != null:
return $default(_that.meals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryDetailElementData> meals)  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailData():
return $default(_that.meals);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryDetailElementData> meals)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailData() when $default != null:
return $default(_that.meals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryDetailData implements CategoryDetailData {
  const _CategoryDetailData({final  List<CategoryDetailElementData> meals = const []}): _meals = meals;
  factory _CategoryDetailData.fromJson(Map<String, dynamic> json) => _$CategoryDetailDataFromJson(json);

 final  List<CategoryDetailElementData> _meals;
@override@JsonKey() List<CategoryDetailElementData> get meals {
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meals);
}


/// Create a copy of CategoryDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDetailDataCopyWith<_CategoryDetailData> get copyWith => __$CategoryDetailDataCopyWithImpl<_CategoryDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDetailData&&const DeepCollectionEquality().equals(other._meals, _meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_meals));

@override
String toString() {
  return 'CategoryDetailData(meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$CategoryDetailDataCopyWith<$Res> implements $CategoryDetailDataCopyWith<$Res> {
  factory _$CategoryDetailDataCopyWith(_CategoryDetailData value, $Res Function(_CategoryDetailData) _then) = __$CategoryDetailDataCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryDetailElementData> meals
});




}
/// @nodoc
class __$CategoryDetailDataCopyWithImpl<$Res>
    implements _$CategoryDetailDataCopyWith<$Res> {
  __$CategoryDetailDataCopyWithImpl(this._self, this._then);

  final _CategoryDetailData _self;
  final $Res Function(_CategoryDetailData) _then;

/// Create a copy of CategoryDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meals = null,}) {
  return _then(_CategoryDetailData(
meals: null == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<CategoryDetailElementData>,
  ));
}


}


/// @nodoc
mixin _$CategoryDetailElementData {

 String get strMeal; String get strMealThumb; String get idMeal;
/// Create a copy of CategoryDetailElementData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDetailElementDataCopyWith<CategoryDetailElementData> get copyWith => _$CategoryDetailElementDataCopyWithImpl<CategoryDetailElementData>(this as CategoryDetailElementData, _$identity);

  /// Serializes this CategoryDetailElementData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDetailElementData&&(identical(other.strMeal, strMeal) || other.strMeal == strMeal)&&(identical(other.strMealThumb, strMealThumb) || other.strMealThumb == strMealThumb)&&(identical(other.idMeal, idMeal) || other.idMeal == idMeal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,strMeal,strMealThumb,idMeal);

@override
String toString() {
  return 'CategoryDetailElementData(strMeal: $strMeal, strMealThumb: $strMealThumb, idMeal: $idMeal)';
}


}

/// @nodoc
abstract mixin class $CategoryDetailElementDataCopyWith<$Res>  {
  factory $CategoryDetailElementDataCopyWith(CategoryDetailElementData value, $Res Function(CategoryDetailElementData) _then) = _$CategoryDetailElementDataCopyWithImpl;
@useResult
$Res call({
 String strMeal, String strMealThumb, String idMeal
});




}
/// @nodoc
class _$CategoryDetailElementDataCopyWithImpl<$Res>
    implements $CategoryDetailElementDataCopyWith<$Res> {
  _$CategoryDetailElementDataCopyWithImpl(this._self, this._then);

  final CategoryDetailElementData _self;
  final $Res Function(CategoryDetailElementData) _then;

/// Create a copy of CategoryDetailElementData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? strMeal = null,Object? strMealThumb = null,Object? idMeal = null,}) {
  return _then(_self.copyWith(
strMeal: null == strMeal ? _self.strMeal : strMeal // ignore: cast_nullable_to_non_nullable
as String,strMealThumb: null == strMealThumb ? _self.strMealThumb : strMealThumb // ignore: cast_nullable_to_non_nullable
as String,idMeal: null == idMeal ? _self.idMeal : idMeal // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryDetailElementData].
extension CategoryDetailElementDataPatterns on CategoryDetailElementData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDetailElementData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDetailElementData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDetailElementData value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailElementData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDetailElementData value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailElementData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String strMeal,  String strMealThumb,  String idMeal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDetailElementData() when $default != null:
return $default(_that.strMeal,_that.strMealThumb,_that.idMeal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String strMeal,  String strMealThumb,  String idMeal)  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailElementData():
return $default(_that.strMeal,_that.strMealThumb,_that.idMeal);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String strMeal,  String strMealThumb,  String idMeal)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailElementData() when $default != null:
return $default(_that.strMeal,_that.strMealThumb,_that.idMeal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryDetailElementData implements CategoryDetailElementData {
  const _CategoryDetailElementData({this.strMeal = '', this.strMealThumb = '', this.idMeal = ''});
  factory _CategoryDetailElementData.fromJson(Map<String, dynamic> json) => _$CategoryDetailElementDataFromJson(json);

@override@JsonKey() final  String strMeal;
@override@JsonKey() final  String strMealThumb;
@override@JsonKey() final  String idMeal;

/// Create a copy of CategoryDetailElementData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDetailElementDataCopyWith<_CategoryDetailElementData> get copyWith => __$CategoryDetailElementDataCopyWithImpl<_CategoryDetailElementData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDetailElementDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDetailElementData&&(identical(other.strMeal, strMeal) || other.strMeal == strMeal)&&(identical(other.strMealThumb, strMealThumb) || other.strMealThumb == strMealThumb)&&(identical(other.idMeal, idMeal) || other.idMeal == idMeal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,strMeal,strMealThumb,idMeal);

@override
String toString() {
  return 'CategoryDetailElementData(strMeal: $strMeal, strMealThumb: $strMealThumb, idMeal: $idMeal)';
}


}

/// @nodoc
abstract mixin class _$CategoryDetailElementDataCopyWith<$Res> implements $CategoryDetailElementDataCopyWith<$Res> {
  factory _$CategoryDetailElementDataCopyWith(_CategoryDetailElementData value, $Res Function(_CategoryDetailElementData) _then) = __$CategoryDetailElementDataCopyWithImpl;
@override @useResult
$Res call({
 String strMeal, String strMealThumb, String idMeal
});




}
/// @nodoc
class __$CategoryDetailElementDataCopyWithImpl<$Res>
    implements _$CategoryDetailElementDataCopyWith<$Res> {
  __$CategoryDetailElementDataCopyWithImpl(this._self, this._then);

  final _CategoryDetailElementData _self;
  final $Res Function(_CategoryDetailElementData) _then;

/// Create a copy of CategoryDetailElementData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? strMeal = null,Object? strMealThumb = null,Object? idMeal = null,}) {
  return _then(_CategoryDetailElementData(
strMeal: null == strMeal ? _self.strMeal : strMeal // ignore: cast_nullable_to_non_nullable
as String,strMealThumb: null == strMealThumb ? _self.strMealThumb : strMealThumb // ignore: cast_nullable_to_non_nullable
as String,idMeal: null == idMeal ? _self.idMeal : idMeal // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
