// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnimeModel {

 int get id; String get title; int? get episodes; String? get description; String? get coverImage; String? get status;
/// Create a copy of AnimeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimeModelCopyWith<AnimeModel> get copyWith => _$AnimeModelCopyWithImpl<AnimeModel>(this as AnimeModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnimeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.episodes, episodes) || other.episodes == episodes)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,episodes,description,coverImage,status);

@override
String toString() {
  return 'AnimeModel(id: $id, title: $title, episodes: $episodes, description: $description, coverImage: $coverImage, status: $status)';
}


}

/// @nodoc
abstract mixin class $AnimeModelCopyWith<$Res>  {
  factory $AnimeModelCopyWith(AnimeModel value, $Res Function(AnimeModel) _then) = _$AnimeModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, int? episodes, String? description, String? coverImage, String? status
});




}
/// @nodoc
class _$AnimeModelCopyWithImpl<$Res>
    implements $AnimeModelCopyWith<$Res> {
  _$AnimeModelCopyWithImpl(this._self, this._then);

  final AnimeModel _self;
  final $Res Function(AnimeModel) _then;

/// Create a copy of AnimeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? episodes = freezed,Object? description = freezed,Object? coverImage = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,episodes: freezed == episodes ? _self.episodes : episodes // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnimeModel].
extension AnimeModelPatterns on AnimeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnimeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnimeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnimeModel value)  $default,){
final _that = this;
switch (_that) {
case _AnimeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnimeModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnimeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  int? episodes,  String? description,  String? coverImage,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnimeModel() when $default != null:
return $default(_that.id,_that.title,_that.episodes,_that.description,_that.coverImage,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  int? episodes,  String? description,  String? coverImage,  String? status)  $default,) {final _that = this;
switch (_that) {
case _AnimeModel():
return $default(_that.id,_that.title,_that.episodes,_that.description,_that.coverImage,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  int? episodes,  String? description,  String? coverImage,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _AnimeModel() when $default != null:
return $default(_that.id,_that.title,_that.episodes,_that.description,_that.coverImage,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _AnimeModel implements AnimeModel {
  const _AnimeModel({required this.id, required this.title, this.episodes, this.description, this.coverImage, this.status});
  

@override final  int id;
@override final  String title;
@override final  int? episodes;
@override final  String? description;
@override final  String? coverImage;
@override final  String? status;

/// Create a copy of AnimeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimeModelCopyWith<_AnimeModel> get copyWith => __$AnimeModelCopyWithImpl<_AnimeModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnimeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.episodes, episodes) || other.episodes == episodes)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,episodes,description,coverImage,status);

@override
String toString() {
  return 'AnimeModel(id: $id, title: $title, episodes: $episodes, description: $description, coverImage: $coverImage, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AnimeModelCopyWith<$Res> implements $AnimeModelCopyWith<$Res> {
  factory _$AnimeModelCopyWith(_AnimeModel value, $Res Function(_AnimeModel) _then) = __$AnimeModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, int? episodes, String? description, String? coverImage, String? status
});




}
/// @nodoc
class __$AnimeModelCopyWithImpl<$Res>
    implements _$AnimeModelCopyWith<$Res> {
  __$AnimeModelCopyWithImpl(this._self, this._then);

  final _AnimeModel _self;
  final $Res Function(_AnimeModel) _then;

/// Create a copy of AnimeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? episodes = freezed,Object? description = freezed,Object? coverImage = freezed,Object? status = freezed,}) {
  return _then(_AnimeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,episodes: freezed == episodes ? _self.episodes : episodes // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
