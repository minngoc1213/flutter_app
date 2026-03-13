// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_detail_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MealDetailEntities {

 List<MealDetailElementEntities> get meals;
/// Create a copy of MealDetailEntities
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealDetailEntitiesCopyWith<MealDetailEntities> get copyWith => _$MealDetailEntitiesCopyWithImpl<MealDetailEntities>(this as MealDetailEntities, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealDetailEntities&&const DeepCollectionEquality().equals(other.meals, meals));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(meals));

@override
String toString() {
  return 'MealDetailEntities(meals: $meals)';
}


}

/// @nodoc
abstract mixin class $MealDetailEntitiesCopyWith<$Res>  {
  factory $MealDetailEntitiesCopyWith(MealDetailEntities value, $Res Function(MealDetailEntities) _then) = _$MealDetailEntitiesCopyWithImpl;
@useResult
$Res call({
 List<MealDetailElementEntities> meals
});




}
/// @nodoc
class _$MealDetailEntitiesCopyWithImpl<$Res>
    implements $MealDetailEntitiesCopyWith<$Res> {
  _$MealDetailEntitiesCopyWithImpl(this._self, this._then);

  final MealDetailEntities _self;
  final $Res Function(MealDetailEntities) _then;

/// Create a copy of MealDetailEntities
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meals = null,}) {
  return _then(_self.copyWith(
meals: null == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<MealDetailElementEntities>,
  ));
}

}


/// Adds pattern-matching-related methods to [MealDetailEntities].
extension MealDetailEntitiesPatterns on MealDetailEntities {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealDetailEntities value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealDetailEntities() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealDetailEntities value)  $default,){
final _that = this;
switch (_that) {
case _MealDetailEntities():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealDetailEntities value)?  $default,){
final _that = this;
switch (_that) {
case _MealDetailEntities() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MealDetailElementEntities> meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealDetailEntities() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MealDetailElementEntities> meals)  $default,) {final _that = this;
switch (_that) {
case _MealDetailEntities():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MealDetailElementEntities> meals)?  $default,) {final _that = this;
switch (_that) {
case _MealDetailEntities() when $default != null:
return $default(_that.meals);case _:
  return null;

}
}

}

/// @nodoc


class _MealDetailEntities implements MealDetailEntities {
  const _MealDetailEntities({final  List<MealDetailElementEntities> meals = const []}): _meals = meals;
  

 final  List<MealDetailElementEntities> _meals;
@override@JsonKey() List<MealDetailElementEntities> get meals {
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meals);
}


/// Create a copy of MealDetailEntities
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealDetailEntitiesCopyWith<_MealDetailEntities> get copyWith => __$MealDetailEntitiesCopyWithImpl<_MealDetailEntities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealDetailEntities&&const DeepCollectionEquality().equals(other._meals, _meals));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_meals));

@override
String toString() {
  return 'MealDetailEntities(meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$MealDetailEntitiesCopyWith<$Res> implements $MealDetailEntitiesCopyWith<$Res> {
  factory _$MealDetailEntitiesCopyWith(_MealDetailEntities value, $Res Function(_MealDetailEntities) _then) = __$MealDetailEntitiesCopyWithImpl;
@override @useResult
$Res call({
 List<MealDetailElementEntities> meals
});




}
/// @nodoc
class __$MealDetailEntitiesCopyWithImpl<$Res>
    implements _$MealDetailEntitiesCopyWith<$Res> {
  __$MealDetailEntitiesCopyWithImpl(this._self, this._then);

  final _MealDetailEntities _self;
  final $Res Function(_MealDetailEntities) _then;

/// Create a copy of MealDetailEntities
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meals = null,}) {
  return _then(_MealDetailEntities(
meals: null == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<MealDetailElementEntities>,
  ));
}


}

/// @nodoc
mixin _$MealDetailElementEntities {

 String get idMeal; String get strMeal; String get strMealAlternate; String get strCategory; String get strArea; String get strInstructions; String get strMealThumb; String get strTags; String get strYoutube; List<String> get strIngredient; List<String> get strMeasure; String get strSource; String get strImageSource; String get strCreativeCommonsConfirmed; String get dateModified;
/// Create a copy of MealDetailElementEntities
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealDetailElementEntitiesCopyWith<MealDetailElementEntities> get copyWith => _$MealDetailElementEntitiesCopyWithImpl<MealDetailElementEntities>(this as MealDetailElementEntities, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealDetailElementEntities&&(identical(other.idMeal, idMeal) || other.idMeal == idMeal)&&(identical(other.strMeal, strMeal) || other.strMeal == strMeal)&&(identical(other.strMealAlternate, strMealAlternate) || other.strMealAlternate == strMealAlternate)&&(identical(other.strCategory, strCategory) || other.strCategory == strCategory)&&(identical(other.strArea, strArea) || other.strArea == strArea)&&(identical(other.strInstructions, strInstructions) || other.strInstructions == strInstructions)&&(identical(other.strMealThumb, strMealThumb) || other.strMealThumb == strMealThumb)&&(identical(other.strTags, strTags) || other.strTags == strTags)&&(identical(other.strYoutube, strYoutube) || other.strYoutube == strYoutube)&&const DeepCollectionEquality().equals(other.strIngredient, strIngredient)&&const DeepCollectionEquality().equals(other.strMeasure, strMeasure)&&(identical(other.strSource, strSource) || other.strSource == strSource)&&(identical(other.strImageSource, strImageSource) || other.strImageSource == strImageSource)&&(identical(other.strCreativeCommonsConfirmed, strCreativeCommonsConfirmed) || other.strCreativeCommonsConfirmed == strCreativeCommonsConfirmed)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,idMeal,strMeal,strMealAlternate,strCategory,strArea,strInstructions,strMealThumb,strTags,strYoutube,const DeepCollectionEquality().hash(strIngredient),const DeepCollectionEquality().hash(strMeasure),strSource,strImageSource,strCreativeCommonsConfirmed,dateModified);

@override
String toString() {
  return 'MealDetailElementEntities(idMeal: $idMeal, strMeal: $strMeal, strMealAlternate: $strMealAlternate, strCategory: $strCategory, strArea: $strArea, strInstructions: $strInstructions, strMealThumb: $strMealThumb, strTags: $strTags, strYoutube: $strYoutube, strIngredient: $strIngredient, strMeasure: $strMeasure, strSource: $strSource, strImageSource: $strImageSource, strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class $MealDetailElementEntitiesCopyWith<$Res>  {
  factory $MealDetailElementEntitiesCopyWith(MealDetailElementEntities value, $Res Function(MealDetailElementEntities) _then) = _$MealDetailElementEntitiesCopyWithImpl;
@useResult
$Res call({
 String idMeal, String strMeal, String strMealAlternate, String strCategory, String strArea, String strInstructions, String strMealThumb, String strTags, String strYoutube, List<String> strIngredient, List<String> strMeasure, String strSource, String strImageSource, String strCreativeCommonsConfirmed, String dateModified
});




}
/// @nodoc
class _$MealDetailElementEntitiesCopyWithImpl<$Res>
    implements $MealDetailElementEntitiesCopyWith<$Res> {
  _$MealDetailElementEntitiesCopyWithImpl(this._self, this._then);

  final MealDetailElementEntities _self;
  final $Res Function(MealDetailElementEntities) _then;

/// Create a copy of MealDetailElementEntities
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idMeal = null,Object? strMeal = null,Object? strMealAlternate = null,Object? strCategory = null,Object? strArea = null,Object? strInstructions = null,Object? strMealThumb = null,Object? strTags = null,Object? strYoutube = null,Object? strIngredient = null,Object? strMeasure = null,Object? strSource = null,Object? strImageSource = null,Object? strCreativeCommonsConfirmed = null,Object? dateModified = null,}) {
  return _then(_self.copyWith(
idMeal: null == idMeal ? _self.idMeal : idMeal // ignore: cast_nullable_to_non_nullable
as String,strMeal: null == strMeal ? _self.strMeal : strMeal // ignore: cast_nullable_to_non_nullable
as String,strMealAlternate: null == strMealAlternate ? _self.strMealAlternate : strMealAlternate // ignore: cast_nullable_to_non_nullable
as String,strCategory: null == strCategory ? _self.strCategory : strCategory // ignore: cast_nullable_to_non_nullable
as String,strArea: null == strArea ? _self.strArea : strArea // ignore: cast_nullable_to_non_nullable
as String,strInstructions: null == strInstructions ? _self.strInstructions : strInstructions // ignore: cast_nullable_to_non_nullable
as String,strMealThumb: null == strMealThumb ? _self.strMealThumb : strMealThumb // ignore: cast_nullable_to_non_nullable
as String,strTags: null == strTags ? _self.strTags : strTags // ignore: cast_nullable_to_non_nullable
as String,strYoutube: null == strYoutube ? _self.strYoutube : strYoutube // ignore: cast_nullable_to_non_nullable
as String,strIngredient: null == strIngredient ? _self.strIngredient : strIngredient // ignore: cast_nullable_to_non_nullable
as List<String>,strMeasure: null == strMeasure ? _self.strMeasure : strMeasure // ignore: cast_nullable_to_non_nullable
as List<String>,strSource: null == strSource ? _self.strSource : strSource // ignore: cast_nullable_to_non_nullable
as String,strImageSource: null == strImageSource ? _self.strImageSource : strImageSource // ignore: cast_nullable_to_non_nullable
as String,strCreativeCommonsConfirmed: null == strCreativeCommonsConfirmed ? _self.strCreativeCommonsConfirmed : strCreativeCommonsConfirmed // ignore: cast_nullable_to_non_nullable
as String,dateModified: null == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MealDetailElementEntities].
extension MealDetailElementEntitiesPatterns on MealDetailElementEntities {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealDetailElementEntities value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealDetailElementEntities() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealDetailElementEntities value)  $default,){
final _that = this;
switch (_that) {
case _MealDetailElementEntities():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealDetailElementEntities value)?  $default,){
final _that = this;
switch (_that) {
case _MealDetailElementEntities() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String idMeal,  String strMeal,  String strMealAlternate,  String strCategory,  String strArea,  String strInstructions,  String strMealThumb,  String strTags,  String strYoutube,  List<String> strIngredient,  List<String> strMeasure,  String strSource,  String strImageSource,  String strCreativeCommonsConfirmed,  String dateModified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealDetailElementEntities() when $default != null:
return $default(_that.idMeal,_that.strMeal,_that.strMealAlternate,_that.strCategory,_that.strArea,_that.strInstructions,_that.strMealThumb,_that.strTags,_that.strYoutube,_that.strIngredient,_that.strMeasure,_that.strSource,_that.strImageSource,_that.strCreativeCommonsConfirmed,_that.dateModified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String idMeal,  String strMeal,  String strMealAlternate,  String strCategory,  String strArea,  String strInstructions,  String strMealThumb,  String strTags,  String strYoutube,  List<String> strIngredient,  List<String> strMeasure,  String strSource,  String strImageSource,  String strCreativeCommonsConfirmed,  String dateModified)  $default,) {final _that = this;
switch (_that) {
case _MealDetailElementEntities():
return $default(_that.idMeal,_that.strMeal,_that.strMealAlternate,_that.strCategory,_that.strArea,_that.strInstructions,_that.strMealThumb,_that.strTags,_that.strYoutube,_that.strIngredient,_that.strMeasure,_that.strSource,_that.strImageSource,_that.strCreativeCommonsConfirmed,_that.dateModified);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String idMeal,  String strMeal,  String strMealAlternate,  String strCategory,  String strArea,  String strInstructions,  String strMealThumb,  String strTags,  String strYoutube,  List<String> strIngredient,  List<String> strMeasure,  String strSource,  String strImageSource,  String strCreativeCommonsConfirmed,  String dateModified)?  $default,) {final _that = this;
switch (_that) {
case _MealDetailElementEntities() when $default != null:
return $default(_that.idMeal,_that.strMeal,_that.strMealAlternate,_that.strCategory,_that.strArea,_that.strInstructions,_that.strMealThumb,_that.strTags,_that.strYoutube,_that.strIngredient,_that.strMeasure,_that.strSource,_that.strImageSource,_that.strCreativeCommonsConfirmed,_that.dateModified);case _:
  return null;

}
}

}

/// @nodoc


class _MealDetailElementEntities implements MealDetailElementEntities {
  const _MealDetailElementEntities({this.idMeal = '', this.strMeal = '', this.strMealAlternate = '', this.strCategory = '', this.strArea = '', this.strInstructions = '', this.strMealThumb = '', this.strTags = '', this.strYoutube = '', final  List<String> strIngredient = const [], final  List<String> strMeasure = const [], this.strSource = '', this.strImageSource = '', this.strCreativeCommonsConfirmed = '', this.dateModified = ''}): _strIngredient = strIngredient,_strMeasure = strMeasure;
  

@override@JsonKey() final  String idMeal;
@override@JsonKey() final  String strMeal;
@override@JsonKey() final  String strMealAlternate;
@override@JsonKey() final  String strCategory;
@override@JsonKey() final  String strArea;
@override@JsonKey() final  String strInstructions;
@override@JsonKey() final  String strMealThumb;
@override@JsonKey() final  String strTags;
@override@JsonKey() final  String strYoutube;
 final  List<String> _strIngredient;
@override@JsonKey() List<String> get strIngredient {
  if (_strIngredient is EqualUnmodifiableListView) return _strIngredient;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_strIngredient);
}

 final  List<String> _strMeasure;
@override@JsonKey() List<String> get strMeasure {
  if (_strMeasure is EqualUnmodifiableListView) return _strMeasure;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_strMeasure);
}

@override@JsonKey() final  String strSource;
@override@JsonKey() final  String strImageSource;
@override@JsonKey() final  String strCreativeCommonsConfirmed;
@override@JsonKey() final  String dateModified;

/// Create a copy of MealDetailElementEntities
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealDetailElementEntitiesCopyWith<_MealDetailElementEntities> get copyWith => __$MealDetailElementEntitiesCopyWithImpl<_MealDetailElementEntities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealDetailElementEntities&&(identical(other.idMeal, idMeal) || other.idMeal == idMeal)&&(identical(other.strMeal, strMeal) || other.strMeal == strMeal)&&(identical(other.strMealAlternate, strMealAlternate) || other.strMealAlternate == strMealAlternate)&&(identical(other.strCategory, strCategory) || other.strCategory == strCategory)&&(identical(other.strArea, strArea) || other.strArea == strArea)&&(identical(other.strInstructions, strInstructions) || other.strInstructions == strInstructions)&&(identical(other.strMealThumb, strMealThumb) || other.strMealThumb == strMealThumb)&&(identical(other.strTags, strTags) || other.strTags == strTags)&&(identical(other.strYoutube, strYoutube) || other.strYoutube == strYoutube)&&const DeepCollectionEquality().equals(other._strIngredient, _strIngredient)&&const DeepCollectionEquality().equals(other._strMeasure, _strMeasure)&&(identical(other.strSource, strSource) || other.strSource == strSource)&&(identical(other.strImageSource, strImageSource) || other.strImageSource == strImageSource)&&(identical(other.strCreativeCommonsConfirmed, strCreativeCommonsConfirmed) || other.strCreativeCommonsConfirmed == strCreativeCommonsConfirmed)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,idMeal,strMeal,strMealAlternate,strCategory,strArea,strInstructions,strMealThumb,strTags,strYoutube,const DeepCollectionEquality().hash(_strIngredient),const DeepCollectionEquality().hash(_strMeasure),strSource,strImageSource,strCreativeCommonsConfirmed,dateModified);

@override
String toString() {
  return 'MealDetailElementEntities(idMeal: $idMeal, strMeal: $strMeal, strMealAlternate: $strMealAlternate, strCategory: $strCategory, strArea: $strArea, strInstructions: $strInstructions, strMealThumb: $strMealThumb, strTags: $strTags, strYoutube: $strYoutube, strIngredient: $strIngredient, strMeasure: $strMeasure, strSource: $strSource, strImageSource: $strImageSource, strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class _$MealDetailElementEntitiesCopyWith<$Res> implements $MealDetailElementEntitiesCopyWith<$Res> {
  factory _$MealDetailElementEntitiesCopyWith(_MealDetailElementEntities value, $Res Function(_MealDetailElementEntities) _then) = __$MealDetailElementEntitiesCopyWithImpl;
@override @useResult
$Res call({
 String idMeal, String strMeal, String strMealAlternate, String strCategory, String strArea, String strInstructions, String strMealThumb, String strTags, String strYoutube, List<String> strIngredient, List<String> strMeasure, String strSource, String strImageSource, String strCreativeCommonsConfirmed, String dateModified
});




}
/// @nodoc
class __$MealDetailElementEntitiesCopyWithImpl<$Res>
    implements _$MealDetailElementEntitiesCopyWith<$Res> {
  __$MealDetailElementEntitiesCopyWithImpl(this._self, this._then);

  final _MealDetailElementEntities _self;
  final $Res Function(_MealDetailElementEntities) _then;

/// Create a copy of MealDetailElementEntities
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idMeal = null,Object? strMeal = null,Object? strMealAlternate = null,Object? strCategory = null,Object? strArea = null,Object? strInstructions = null,Object? strMealThumb = null,Object? strTags = null,Object? strYoutube = null,Object? strIngredient = null,Object? strMeasure = null,Object? strSource = null,Object? strImageSource = null,Object? strCreativeCommonsConfirmed = null,Object? dateModified = null,}) {
  return _then(_MealDetailElementEntities(
idMeal: null == idMeal ? _self.idMeal : idMeal // ignore: cast_nullable_to_non_nullable
as String,strMeal: null == strMeal ? _self.strMeal : strMeal // ignore: cast_nullable_to_non_nullable
as String,strMealAlternate: null == strMealAlternate ? _self.strMealAlternate : strMealAlternate // ignore: cast_nullable_to_non_nullable
as String,strCategory: null == strCategory ? _self.strCategory : strCategory // ignore: cast_nullable_to_non_nullable
as String,strArea: null == strArea ? _self.strArea : strArea // ignore: cast_nullable_to_non_nullable
as String,strInstructions: null == strInstructions ? _self.strInstructions : strInstructions // ignore: cast_nullable_to_non_nullable
as String,strMealThumb: null == strMealThumb ? _self.strMealThumb : strMealThumb // ignore: cast_nullable_to_non_nullable
as String,strTags: null == strTags ? _self.strTags : strTags // ignore: cast_nullable_to_non_nullable
as String,strYoutube: null == strYoutube ? _self.strYoutube : strYoutube // ignore: cast_nullable_to_non_nullable
as String,strIngredient: null == strIngredient ? _self._strIngredient : strIngredient // ignore: cast_nullable_to_non_nullable
as List<String>,strMeasure: null == strMeasure ? _self._strMeasure : strMeasure // ignore: cast_nullable_to_non_nullable
as List<String>,strSource: null == strSource ? _self.strSource : strSource // ignore: cast_nullable_to_non_nullable
as String,strImageSource: null == strImageSource ? _self.strImageSource : strImageSource // ignore: cast_nullable_to_non_nullable
as String,strCreativeCommonsConfirmed: null == strCreativeCommonsConfirmed ? _self.strCreativeCommonsConfirmed : strCreativeCommonsConfirmed // ignore: cast_nullable_to_non_nullable
as String,dateModified: null == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
