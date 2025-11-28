// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnimeDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnimeDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnimeDetailsState()';
}


}

/// @nodoc
class $AnimeDetailsStateCopyWith<$Res>  {
$AnimeDetailsStateCopyWith(AnimeDetailsState _, $Res Function(AnimeDetailsState) __);
}


/// Adds pattern-matching-related methods to [AnimeDetailsState].
extension AnimeDetailsStatePatterns on AnimeDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Failed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Failed value)  failed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Failed():
return failed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Failed value)?  failed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AnimeByIdEntity animeDetails)?  loaded,TResult Function( String message)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.animeDetails);case _Failed() when failed != null:
return failed(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AnimeByIdEntity animeDetails)  loaded,required TResult Function( String message)  failed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.animeDetails);case _Failed():
return failed(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AnimeByIdEntity animeDetails)?  loaded,TResult? Function( String message)?  failed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.animeDetails);case _Failed() when failed != null:
return failed(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AnimeDetailsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnimeDetailsState.initial()';
}


}




/// @nodoc


class _Loading implements AnimeDetailsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnimeDetailsState.loading()';
}


}




/// @nodoc


class _Loaded implements AnimeDetailsState {
  const _Loaded({required this.animeDetails});
  

 final  AnimeByIdEntity animeDetails;

/// Create a copy of AnimeDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.animeDetails, animeDetails) || other.animeDetails == animeDetails));
}


@override
int get hashCode => Object.hash(runtimeType,animeDetails);

@override
String toString() {
  return 'AnimeDetailsState.loaded(animeDetails: $animeDetails)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $AnimeDetailsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 AnimeByIdEntity animeDetails
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of AnimeDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? animeDetails = null,}) {
  return _then(_Loaded(
animeDetails: null == animeDetails ? _self.animeDetails : animeDetails // ignore: cast_nullable_to_non_nullable
as AnimeByIdEntity,
  ));
}


}

/// @nodoc


class _Failed implements AnimeDetailsState {
  const _Failed({required this.message});
  

 final  String message;

/// Create a copy of AnimeDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailedCopyWith<_Failed> get copyWith => __$FailedCopyWithImpl<_Failed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AnimeDetailsState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailedCopyWith<$Res> implements $AnimeDetailsStateCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) _then) = __$FailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailedCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(this._self, this._then);

  final _Failed _self;
  final $Res Function(_Failed) _then;

/// Create a copy of AnimeDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
