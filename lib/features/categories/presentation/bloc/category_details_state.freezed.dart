// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryDetailsState {

 CategoryDetailEntities? get meals;
/// Create a copy of CategoryDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDetailsStateCopyWith<CategoryDetailsState> get copyWith => _$CategoryDetailsStateCopyWithImpl<CategoryDetailsState>(this as CategoryDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDetailsState&&(identical(other.meals, meals) || other.meals == meals));
}


@override
int get hashCode => Object.hash(runtimeType,meals);

@override
String toString() {
  return 'CategoryDetailsState(meals: $meals)';
}


}

/// @nodoc
abstract mixin class $CategoryDetailsStateCopyWith<$Res>  {
  factory $CategoryDetailsStateCopyWith(CategoryDetailsState value, $Res Function(CategoryDetailsState) _then) = _$CategoryDetailsStateCopyWithImpl;
@useResult
$Res call({
 CategoryDetailEntities? meals
});


$CategoryDetailEntitiesCopyWith<$Res>? get meals;

}
/// @nodoc
class _$CategoryDetailsStateCopyWithImpl<$Res>
    implements $CategoryDetailsStateCopyWith<$Res> {
  _$CategoryDetailsStateCopyWithImpl(this._self, this._then);

  final CategoryDetailsState _self;
  final $Res Function(CategoryDetailsState) _then;

/// Create a copy of CategoryDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meals = freezed,}) {
  return _then(_self.copyWith(
meals: freezed == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as CategoryDetailEntities?,
  ));
}
/// Create a copy of CategoryDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDetailEntitiesCopyWith<$Res>? get meals {
    if (_self.meals == null) {
    return null;
  }

  return $CategoryDetailEntitiesCopyWith<$Res>(_self.meals!, (value) {
    return _then(_self.copyWith(meals: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryDetailsState].
extension CategoryDetailsStatePatterns on CategoryDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CategoryDetailEntities? meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDetailsState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CategoryDetailEntities? meals)  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailsState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CategoryDetailEntities? meals)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailsState() when $default != null:
return $default(_that.meals);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryDetailsState implements CategoryDetailsState {
  const _CategoryDetailsState({this.meals = null});
  

@override@JsonKey() final  CategoryDetailEntities? meals;

/// Create a copy of CategoryDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDetailsStateCopyWith<_CategoryDetailsState> get copyWith => __$CategoryDetailsStateCopyWithImpl<_CategoryDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDetailsState&&(identical(other.meals, meals) || other.meals == meals));
}


@override
int get hashCode => Object.hash(runtimeType,meals);

@override
String toString() {
  return 'CategoryDetailsState(meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$CategoryDetailsStateCopyWith<$Res> implements $CategoryDetailsStateCopyWith<$Res> {
  factory _$CategoryDetailsStateCopyWith(_CategoryDetailsState value, $Res Function(_CategoryDetailsState) _then) = __$CategoryDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 CategoryDetailEntities? meals
});


@override $CategoryDetailEntitiesCopyWith<$Res>? get meals;

}
/// @nodoc
class __$CategoryDetailsStateCopyWithImpl<$Res>
    implements _$CategoryDetailsStateCopyWith<$Res> {
  __$CategoryDetailsStateCopyWithImpl(this._self, this._then);

  final _CategoryDetailsState _self;
  final $Res Function(_CategoryDetailsState) _then;

/// Create a copy of CategoryDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meals = freezed,}) {
  return _then(_CategoryDetailsState(
meals: freezed == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as CategoryDetailEntities?,
  ));
}

/// Create a copy of CategoryDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDetailEntitiesCopyWith<$Res>? get meals {
    if (_self.meals == null) {
    return null;
  }

  return $CategoryDetailEntitiesCopyWith<$Res>(_self.meals!, (value) {
    return _then(_self.copyWith(meals: value));
  });
}
}

// dart format on
