// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MealDetailsState {

 MealDetailEntities? get meals;
/// Create a copy of MealDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealDetailsStateCopyWith<MealDetailsState> get copyWith => _$MealDetailsStateCopyWithImpl<MealDetailsState>(this as MealDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealDetailsState&&(identical(other.meals, meals) || other.meals == meals));
}


@override
int get hashCode => Object.hash(runtimeType,meals);

@override
String toString() {
  return 'MealDetailsState(meals: $meals)';
}


}

/// @nodoc
abstract mixin class $MealDetailsStateCopyWith<$Res>  {
  factory $MealDetailsStateCopyWith(MealDetailsState value, $Res Function(MealDetailsState) _then) = _$MealDetailsStateCopyWithImpl;
@useResult
$Res call({
 MealDetailEntities? meals
});


$MealDetailEntitiesCopyWith<$Res>? get meals;

}
/// @nodoc
class _$MealDetailsStateCopyWithImpl<$Res>
    implements $MealDetailsStateCopyWith<$Res> {
  _$MealDetailsStateCopyWithImpl(this._self, this._then);

  final MealDetailsState _self;
  final $Res Function(MealDetailsState) _then;

/// Create a copy of MealDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meals = freezed,}) {
  return _then(_self.copyWith(
meals: freezed == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as MealDetailEntities?,
  ));
}
/// Create a copy of MealDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MealDetailEntitiesCopyWith<$Res>? get meals {
    if (_self.meals == null) {
    return null;
  }

  return $MealDetailEntitiesCopyWith<$Res>(_self.meals!, (value) {
    return _then(_self.copyWith(meals: value));
  });
}
}


/// Adds pattern-matching-related methods to [MealDetailsState].
extension MealDetailsStatePatterns on MealDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _MealDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _MealDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MealDetailEntities? meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealDetailsState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MealDetailEntities? meals)  $default,) {final _that = this;
switch (_that) {
case _MealDetailsState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MealDetailEntities? meals)?  $default,) {final _that = this;
switch (_that) {
case _MealDetailsState() when $default != null:
return $default(_that.meals);case _:
  return null;

}
}

}

/// @nodoc


class _MealDetailsState implements MealDetailsState {
  const _MealDetailsState({this.meals = null});
  

@override@JsonKey() final  MealDetailEntities? meals;

/// Create a copy of MealDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealDetailsStateCopyWith<_MealDetailsState> get copyWith => __$MealDetailsStateCopyWithImpl<_MealDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealDetailsState&&(identical(other.meals, meals) || other.meals == meals));
}


@override
int get hashCode => Object.hash(runtimeType,meals);

@override
String toString() {
  return 'MealDetailsState(meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$MealDetailsStateCopyWith<$Res> implements $MealDetailsStateCopyWith<$Res> {
  factory _$MealDetailsStateCopyWith(_MealDetailsState value, $Res Function(_MealDetailsState) _then) = __$MealDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 MealDetailEntities? meals
});


@override $MealDetailEntitiesCopyWith<$Res>? get meals;

}
/// @nodoc
class __$MealDetailsStateCopyWithImpl<$Res>
    implements _$MealDetailsStateCopyWith<$Res> {
  __$MealDetailsStateCopyWithImpl(this._self, this._then);

  final _MealDetailsState _self;
  final $Res Function(_MealDetailsState) _then;

/// Create a copy of MealDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meals = freezed,}) {
  return _then(_MealDetailsState(
meals: freezed == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as MealDetailEntities?,
  ));
}

/// Create a copy of MealDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MealDetailEntitiesCopyWith<$Res>? get meals {
    if (_self.meals == null) {
    return null;
  }

  return $MealDetailEntitiesCopyWith<$Res>(_self.meals!, (value) {
    return _then(_self.copyWith(meals: value));
  });
}
}

// dart format on
