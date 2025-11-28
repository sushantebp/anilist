// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnimeSearchModel {

 int get id; String? get titleEnglish; String? get coverImage;
/// Create a copy of AnimeSearchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimeSearchModelCopyWith<AnimeSearchModel> get copyWith => _$AnimeSearchModelCopyWithImpl<AnimeSearchModel>(this as AnimeSearchModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnimeSearchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.titleEnglish, titleEnglish) || other.titleEnglish == titleEnglish)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage));
}


@override
int get hashCode => Object.hash(runtimeType,id,titleEnglish,coverImage);

@override
String toString() {
  return 'AnimeSearchModel(id: $id, titleEnglish: $titleEnglish, coverImage: $coverImage)';
}


}

/// @nodoc
abstract mixin class $AnimeSearchModelCopyWith<$Res>  {
  factory $AnimeSearchModelCopyWith(AnimeSearchModel value, $Res Function(AnimeSearchModel) _then) = _$AnimeSearchModelCopyWithImpl;
@useResult
$Res call({
 int id, String? titleEnglish, String? coverImage
});




}
/// @nodoc
class _$AnimeSearchModelCopyWithImpl<$Res>
    implements $AnimeSearchModelCopyWith<$Res> {
  _$AnimeSearchModelCopyWithImpl(this._self, this._then);

  final AnimeSearchModel _self;
  final $Res Function(AnimeSearchModel) _then;

/// Create a copy of AnimeSearchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? titleEnglish = freezed,Object? coverImage = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,titleEnglish: freezed == titleEnglish ? _self.titleEnglish : titleEnglish // ignore: cast_nullable_to_non_nullable
as String?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnimeSearchModel].
extension AnimeSearchModelPatterns on AnimeSearchModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnimeSearchModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnimeSearchModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnimeSearchModel value)  $default,){
final _that = this;
switch (_that) {
case _AnimeSearchModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnimeSearchModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnimeSearchModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? titleEnglish,  String? coverImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnimeSearchModel() when $default != null:
return $default(_that.id,_that.titleEnglish,_that.coverImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? titleEnglish,  String? coverImage)  $default,) {final _that = this;
switch (_that) {
case _AnimeSearchModel():
return $default(_that.id,_that.titleEnglish,_that.coverImage);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? titleEnglish,  String? coverImage)?  $default,) {final _that = this;
switch (_that) {
case _AnimeSearchModel() when $default != null:
return $default(_that.id,_that.titleEnglish,_that.coverImage);case _:
  return null;

}
}

}

/// @nodoc


class _AnimeSearchModel implements AnimeSearchModel {
  const _AnimeSearchModel({required this.id, this.titleEnglish, this.coverImage});
  

@override final  int id;
@override final  String? titleEnglish;
@override final  String? coverImage;

/// Create a copy of AnimeSearchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimeSearchModelCopyWith<_AnimeSearchModel> get copyWith => __$AnimeSearchModelCopyWithImpl<_AnimeSearchModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnimeSearchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.titleEnglish, titleEnglish) || other.titleEnglish == titleEnglish)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage));
}


@override
int get hashCode => Object.hash(runtimeType,id,titleEnglish,coverImage);

@override
String toString() {
  return 'AnimeSearchModel(id: $id, titleEnglish: $titleEnglish, coverImage: $coverImage)';
}


}

/// @nodoc
abstract mixin class _$AnimeSearchModelCopyWith<$Res> implements $AnimeSearchModelCopyWith<$Res> {
  factory _$AnimeSearchModelCopyWith(_AnimeSearchModel value, $Res Function(_AnimeSearchModel) _then) = __$AnimeSearchModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String? titleEnglish, String? coverImage
});




}
/// @nodoc
class __$AnimeSearchModelCopyWithImpl<$Res>
    implements _$AnimeSearchModelCopyWith<$Res> {
  __$AnimeSearchModelCopyWithImpl(this._self, this._then);

  final _AnimeSearchModel _self;
  final $Res Function(_AnimeSearchModel) _then;

/// Create a copy of AnimeSearchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? titleEnglish = freezed,Object? coverImage = freezed,}) {
  return _then(_AnimeSearchModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,titleEnglish: freezed == titleEnglish ? _self.titleEnglish : titleEnglish // ignore: cast_nullable_to_non_nullable
as String?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
