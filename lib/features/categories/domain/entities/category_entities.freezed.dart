// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryEntities {

 List<CategoryElementEntities> get categories;
/// Create a copy of CategoryEntities
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryEntitiesCopyWith<CategoryEntities> get copyWith => _$CategoryEntitiesCopyWithImpl<CategoryEntities>(this as CategoryEntities, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryEntities&&const DeepCollectionEquality().equals(other.categories, categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'CategoryEntities(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoryEntitiesCopyWith<$Res>  {
  factory $CategoryEntitiesCopyWith(CategoryEntities value, $Res Function(CategoryEntities) _then) = _$CategoryEntitiesCopyWithImpl;
@useResult
$Res call({
 List<CategoryElementEntities> categories
});




}
/// @nodoc
class _$CategoryEntitiesCopyWithImpl<$Res>
    implements $CategoryEntitiesCopyWith<$Res> {
  _$CategoryEntitiesCopyWithImpl(this._self, this._then);

  final CategoryEntities _self;
  final $Res Function(CategoryEntities) _then;

/// Create a copy of CategoryEntities
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryElementEntities>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryEntities].
extension CategoryEntitiesPatterns on CategoryEntities {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryEntities value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryEntities() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryEntities value)  $default,){
final _that = this;
switch (_that) {
case _CategoryEntities():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryEntities value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryEntities() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryElementEntities> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryEntities() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryElementEntities> categories)  $default,) {final _that = this;
switch (_that) {
case _CategoryEntities():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryElementEntities> categories)?  $default,) {final _that = this;
switch (_that) {
case _CategoryEntities() when $default != null:
return $default(_that.categories);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryEntities implements CategoryEntities {
  const _CategoryEntities({final  List<CategoryElementEntities> categories = const []}): _categories = categories;
  

 final  List<CategoryElementEntities> _categories;
@override@JsonKey() List<CategoryElementEntities> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CategoryEntities
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryEntitiesCopyWith<_CategoryEntities> get copyWith => __$CategoryEntitiesCopyWithImpl<_CategoryEntities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryEntities&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoryEntities(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$CategoryEntitiesCopyWith<$Res> implements $CategoryEntitiesCopyWith<$Res> {
  factory _$CategoryEntitiesCopyWith(_CategoryEntities value, $Res Function(_CategoryEntities) _then) = __$CategoryEntitiesCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryElementEntities> categories
});




}
/// @nodoc
class __$CategoryEntitiesCopyWithImpl<$Res>
    implements _$CategoryEntitiesCopyWith<$Res> {
  __$CategoryEntitiesCopyWithImpl(this._self, this._then);

  final _CategoryEntities _self;
  final $Res Function(_CategoryEntities) _then;

/// Create a copy of CategoryEntities
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(_CategoryEntities(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryElementEntities>,
  ));
}


}

/// @nodoc
mixin _$CategoryElementEntities {

 String get idCategory; String get strCategory; String get strCategoryThumb; String get strCategoryDescription;
/// Create a copy of CategoryElementEntities
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryElementEntitiesCopyWith<CategoryElementEntities> get copyWith => _$CategoryElementEntitiesCopyWithImpl<CategoryElementEntities>(this as CategoryElementEntities, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryElementEntities&&(identical(other.idCategory, idCategory) || other.idCategory == idCategory)&&(identical(other.strCategory, strCategory) || other.strCategory == strCategory)&&(identical(other.strCategoryThumb, strCategoryThumb) || other.strCategoryThumb == strCategoryThumb)&&(identical(other.strCategoryDescription, strCategoryDescription) || other.strCategoryDescription == strCategoryDescription));
}


@override
int get hashCode => Object.hash(runtimeType,idCategory,strCategory,strCategoryThumb,strCategoryDescription);

@override
String toString() {
  return 'CategoryElementEntities(idCategory: $idCategory, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
}


}

/// @nodoc
abstract mixin class $CategoryElementEntitiesCopyWith<$Res>  {
  factory $CategoryElementEntitiesCopyWith(CategoryElementEntities value, $Res Function(CategoryElementEntities) _then) = _$CategoryElementEntitiesCopyWithImpl;
@useResult
$Res call({
 String idCategory, String strCategory, String strCategoryThumb, String strCategoryDescription
});




}
/// @nodoc
class _$CategoryElementEntitiesCopyWithImpl<$Res>
    implements $CategoryElementEntitiesCopyWith<$Res> {
  _$CategoryElementEntitiesCopyWithImpl(this._self, this._then);

  final CategoryElementEntities _self;
  final $Res Function(CategoryElementEntities) _then;

/// Create a copy of CategoryElementEntities
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


/// Adds pattern-matching-related methods to [CategoryElementEntities].
extension CategoryElementEntitiesPatterns on CategoryElementEntities {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryElementEntities value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryElementEntities() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryElementEntities value)  $default,){
final _that = this;
switch (_that) {
case _CategoryElementEntities():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryElementEntities value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryElementEntities() when $default != null:
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
case _CategoryElementEntities() when $default != null:
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
case _CategoryElementEntities():
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
case _CategoryElementEntities() when $default != null:
return $default(_that.idCategory,_that.strCategory,_that.strCategoryThumb,_that.strCategoryDescription);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryElementEntities implements CategoryElementEntities {
  const _CategoryElementEntities({this.idCategory = '', this.strCategory = '', this.strCategoryThumb = '', this.strCategoryDescription = ''});
  

@override@JsonKey() final  String idCategory;
@override@JsonKey() final  String strCategory;
@override@JsonKey() final  String strCategoryThumb;
@override@JsonKey() final  String strCategoryDescription;

/// Create a copy of CategoryElementEntities
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryElementEntitiesCopyWith<_CategoryElementEntities> get copyWith => __$CategoryElementEntitiesCopyWithImpl<_CategoryElementEntities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryElementEntities&&(identical(other.idCategory, idCategory) || other.idCategory == idCategory)&&(identical(other.strCategory, strCategory) || other.strCategory == strCategory)&&(identical(other.strCategoryThumb, strCategoryThumb) || other.strCategoryThumb == strCategoryThumb)&&(identical(other.strCategoryDescription, strCategoryDescription) || other.strCategoryDescription == strCategoryDescription));
}


@override
int get hashCode => Object.hash(runtimeType,idCategory,strCategory,strCategoryThumb,strCategoryDescription);

@override
String toString() {
  return 'CategoryElementEntities(idCategory: $idCategory, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
}


}

/// @nodoc
abstract mixin class _$CategoryElementEntitiesCopyWith<$Res> implements $CategoryElementEntitiesCopyWith<$Res> {
  factory _$CategoryElementEntitiesCopyWith(_CategoryElementEntities value, $Res Function(_CategoryElementEntities) _then) = __$CategoryElementEntitiesCopyWithImpl;
@override @useResult
$Res call({
 String idCategory, String strCategory, String strCategoryThumb, String strCategoryDescription
});




}
/// @nodoc
class __$CategoryElementEntitiesCopyWithImpl<$Res>
    implements _$CategoryElementEntitiesCopyWith<$Res> {
  __$CategoryElementEntitiesCopyWithImpl(this._self, this._then);

  final _CategoryElementEntities _self;
  final $Res Function(_CategoryElementEntities) _then;

/// Create a copy of CategoryElementEntities
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idCategory = null,Object? strCategory = null,Object? strCategoryThumb = null,Object? strCategoryDescription = null,}) {
  return _then(_CategoryElementEntities(
idCategory: null == idCategory ? _self.idCategory : idCategory // ignore: cast_nullable_to_non_nullable
as String,strCategory: null == strCategory ? _self.strCategory : strCategory // ignore: cast_nullable_to_non_nullable
as String,strCategoryThumb: null == strCategoryThumb ? _self.strCategoryThumb : strCategoryThumb // ignore: cast_nullable_to_non_nullable
as String,strCategoryDescription: null == strCategoryDescription ? _self.strCategoryDescription : strCategoryDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
