// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_detail_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryDetailEntities {

 List<CategoryDetailElementEntities> get meals;
/// Create a copy of CategoryDetailEntities
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDetailEntitiesCopyWith<CategoryDetailEntities> get copyWith => _$CategoryDetailEntitiesCopyWithImpl<CategoryDetailEntities>(this as CategoryDetailEntities, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDetailEntities&&const DeepCollectionEquality().equals(other.meals, meals));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(meals));

@override
String toString() {
  return 'CategoryDetailEntities(meals: $meals)';
}


}

/// @nodoc
abstract mixin class $CategoryDetailEntitiesCopyWith<$Res>  {
  factory $CategoryDetailEntitiesCopyWith(CategoryDetailEntities value, $Res Function(CategoryDetailEntities) _then) = _$CategoryDetailEntitiesCopyWithImpl;
@useResult
$Res call({
 List<CategoryDetailElementEntities> meals
});




}
/// @nodoc
class _$CategoryDetailEntitiesCopyWithImpl<$Res>
    implements $CategoryDetailEntitiesCopyWith<$Res> {
  _$CategoryDetailEntitiesCopyWithImpl(this._self, this._then);

  final CategoryDetailEntities _self;
  final $Res Function(CategoryDetailEntities) _then;

/// Create a copy of CategoryDetailEntities
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meals = null,}) {
  return _then(_self.copyWith(
meals: null == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<CategoryDetailElementEntities>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryDetailEntities].
extension CategoryDetailEntitiesPatterns on CategoryDetailEntities {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDetailEntities value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDetailEntities() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDetailEntities value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailEntities():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDetailEntities value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailEntities() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryDetailElementEntities> meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDetailEntities() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryDetailElementEntities> meals)  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailEntities():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryDetailElementEntities> meals)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailEntities() when $default != null:
return $default(_that.meals);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryDetailEntities implements CategoryDetailEntities {
  const _CategoryDetailEntities({final  List<CategoryDetailElementEntities> meals = const []}): _meals = meals;
  

 final  List<CategoryDetailElementEntities> _meals;
@override@JsonKey() List<CategoryDetailElementEntities> get meals {
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meals);
}


/// Create a copy of CategoryDetailEntities
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDetailEntitiesCopyWith<_CategoryDetailEntities> get copyWith => __$CategoryDetailEntitiesCopyWithImpl<_CategoryDetailEntities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDetailEntities&&const DeepCollectionEquality().equals(other._meals, _meals));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_meals));

@override
String toString() {
  return 'CategoryDetailEntities(meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$CategoryDetailEntitiesCopyWith<$Res> implements $CategoryDetailEntitiesCopyWith<$Res> {
  factory _$CategoryDetailEntitiesCopyWith(_CategoryDetailEntities value, $Res Function(_CategoryDetailEntities) _then) = __$CategoryDetailEntitiesCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryDetailElementEntities> meals
});




}
/// @nodoc
class __$CategoryDetailEntitiesCopyWithImpl<$Res>
    implements _$CategoryDetailEntitiesCopyWith<$Res> {
  __$CategoryDetailEntitiesCopyWithImpl(this._self, this._then);

  final _CategoryDetailEntities _self;
  final $Res Function(_CategoryDetailEntities) _then;

/// Create a copy of CategoryDetailEntities
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meals = null,}) {
  return _then(_CategoryDetailEntities(
meals: null == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<CategoryDetailElementEntities>,
  ));
}


}

/// @nodoc
mixin _$CategoryDetailElementEntities {

 String get strMeal; String get strMealThumb; String get idMeal;
/// Create a copy of CategoryDetailElementEntities
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDetailElementEntitiesCopyWith<CategoryDetailElementEntities> get copyWith => _$CategoryDetailElementEntitiesCopyWithImpl<CategoryDetailElementEntities>(this as CategoryDetailElementEntities, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDetailElementEntities&&(identical(other.strMeal, strMeal) || other.strMeal == strMeal)&&(identical(other.strMealThumb, strMealThumb) || other.strMealThumb == strMealThumb)&&(identical(other.idMeal, idMeal) || other.idMeal == idMeal));
}


@override
int get hashCode => Object.hash(runtimeType,strMeal,strMealThumb,idMeal);

@override
String toString() {
  return 'CategoryDetailElementEntities(strMeal: $strMeal, strMealThumb: $strMealThumb, idMeal: $idMeal)';
}


}

/// @nodoc
abstract mixin class $CategoryDetailElementEntitiesCopyWith<$Res>  {
  factory $CategoryDetailElementEntitiesCopyWith(CategoryDetailElementEntities value, $Res Function(CategoryDetailElementEntities) _then) = _$CategoryDetailElementEntitiesCopyWithImpl;
@useResult
$Res call({
 String strMeal, String strMealThumb, String idMeal
});




}
/// @nodoc
class _$CategoryDetailElementEntitiesCopyWithImpl<$Res>
    implements $CategoryDetailElementEntitiesCopyWith<$Res> {
  _$CategoryDetailElementEntitiesCopyWithImpl(this._self, this._then);

  final CategoryDetailElementEntities _self;
  final $Res Function(CategoryDetailElementEntities) _then;

/// Create a copy of CategoryDetailElementEntities
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


/// Adds pattern-matching-related methods to [CategoryDetailElementEntities].
extension CategoryDetailElementEntitiesPatterns on CategoryDetailElementEntities {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDetailElementEntities value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDetailElementEntities() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDetailElementEntities value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailElementEntities():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDetailElementEntities value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailElementEntities() when $default != null:
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
case _CategoryDetailElementEntities() when $default != null:
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
case _CategoryDetailElementEntities():
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
case _CategoryDetailElementEntities() when $default != null:
return $default(_that.strMeal,_that.strMealThumb,_that.idMeal);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryDetailElementEntities implements CategoryDetailElementEntities {
  const _CategoryDetailElementEntities({this.strMeal = '', this.strMealThumb = '', this.idMeal = ''});
  

@override@JsonKey() final  String strMeal;
@override@JsonKey() final  String strMealThumb;
@override@JsonKey() final  String idMeal;

/// Create a copy of CategoryDetailElementEntities
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDetailElementEntitiesCopyWith<_CategoryDetailElementEntities> get copyWith => __$CategoryDetailElementEntitiesCopyWithImpl<_CategoryDetailElementEntities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDetailElementEntities&&(identical(other.strMeal, strMeal) || other.strMeal == strMeal)&&(identical(other.strMealThumb, strMealThumb) || other.strMealThumb == strMealThumb)&&(identical(other.idMeal, idMeal) || other.idMeal == idMeal));
}


@override
int get hashCode => Object.hash(runtimeType,strMeal,strMealThumb,idMeal);

@override
String toString() {
  return 'CategoryDetailElementEntities(strMeal: $strMeal, strMealThumb: $strMealThumb, idMeal: $idMeal)';
}


}

/// @nodoc
abstract mixin class _$CategoryDetailElementEntitiesCopyWith<$Res> implements $CategoryDetailElementEntitiesCopyWith<$Res> {
  factory _$CategoryDetailElementEntitiesCopyWith(_CategoryDetailElementEntities value, $Res Function(_CategoryDetailElementEntities) _then) = __$CategoryDetailElementEntitiesCopyWithImpl;
@override @useResult
$Res call({
 String strMeal, String strMealThumb, String idMeal
});




}
/// @nodoc
class __$CategoryDetailElementEntitiesCopyWithImpl<$Res>
    implements _$CategoryDetailElementEntitiesCopyWith<$Res> {
  __$CategoryDetailElementEntitiesCopyWithImpl(this._self, this._then);

  final _CategoryDetailElementEntities _self;
  final $Res Function(_CategoryDetailElementEntities) _then;

/// Create a copy of CategoryDetailElementEntities
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? strMeal = null,Object? strMealThumb = null,Object? idMeal = null,}) {
  return _then(_CategoryDetailElementEntities(
strMeal: null == strMeal ? _self.strMeal : strMeal // ignore: cast_nullable_to_non_nullable
as String,strMealThumb: null == strMealThumb ? _self.strMealThumb : strMealThumb // ignore: cast_nullable_to_non_nullable
as String,idMeal: null == idMeal ? _self.idMeal : idMeal // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
