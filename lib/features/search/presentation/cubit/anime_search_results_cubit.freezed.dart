// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_search_results_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnimeSearchResultsState {

 bool get isLoadingMore;
/// Create a copy of AnimeSearchResultsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimeSearchResultsStateCopyWith<AnimeSearchResultsState> get copyWith => _$AnimeSearchResultsStateCopyWithImpl<AnimeSearchResultsState>(this as AnimeSearchResultsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnimeSearchResultsState&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingMore);

@override
String toString() {
  return 'AnimeSearchResultsState(isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $AnimeSearchResultsStateCopyWith<$Res>  {
  factory $AnimeSearchResultsStateCopyWith(AnimeSearchResultsState value, $Res Function(AnimeSearchResultsState) _then) = _$AnimeSearchResultsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoadingMore
});




}
/// @nodoc
class _$AnimeSearchResultsStateCopyWithImpl<$Res>
    implements $AnimeSearchResultsStateCopyWith<$Res> {
  _$AnimeSearchResultsStateCopyWithImpl(this._self, this._then);

  final AnimeSearchResultsState _self;
  final $Res Function(AnimeSearchResultsState) _then;

/// Create a copy of AnimeSearchResultsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoadingMore = null,}) {
  return _then(_self.copyWith(
isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AnimeSearchResultsState].
extension AnimeSearchResultsStatePatterns on AnimeSearchResultsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isLoadingMore)?  initial,TResult Function( bool isLoadingMore)?  loading,TResult Function( bool isLoadingMore,  List<AnimeSearchEntity> searchResults)?  loaded,TResult Function( bool isLoadingMore,  String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.isLoadingMore);case _Loading() when loading != null:
return loading(_that.isLoadingMore);case _Loaded() when loaded != null:
return loaded(_that.isLoadingMore,_that.searchResults);case _Failure() when failure != null:
return failure(_that.isLoadingMore,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isLoadingMore)  initial,required TResult Function( bool isLoadingMore)  loading,required TResult Function( bool isLoadingMore,  List<AnimeSearchEntity> searchResults)  loaded,required TResult Function( bool isLoadingMore,  String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.isLoadingMore);case _Loading():
return loading(_that.isLoadingMore);case _Loaded():
return loaded(_that.isLoadingMore,_that.searchResults);case _Failure():
return failure(_that.isLoadingMore,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isLoadingMore)?  initial,TResult? Function( bool isLoadingMore)?  loading,TResult? Function( bool isLoadingMore,  List<AnimeSearchEntity> searchResults)?  loaded,TResult? Function( bool isLoadingMore,  String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.isLoadingMore);case _Loading() when loading != null:
return loading(_that.isLoadingMore);case _Loaded() when loaded != null:
return loaded(_that.isLoadingMore,_that.searchResults);case _Failure() when failure != null:
return failure(_that.isLoadingMore,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AnimeSearchResultsState {
  const _Initial({this.isLoadingMore = false});
  

@override@JsonKey() final  bool isLoadingMore;

/// Create a copy of AnimeSearchResultsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingMore);

@override
String toString() {
  return 'AnimeSearchResultsState.initial(isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $AnimeSearchResultsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 bool isLoadingMore
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of AnimeSearchResultsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoadingMore = null,}) {
  return _then(_Initial(
isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Loading implements AnimeSearchResultsState {
  const _Loading({this.isLoadingMore = false});
  

@override@JsonKey() final  bool isLoadingMore;

/// Create a copy of AnimeSearchResultsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingCopyWith<_Loading> get copyWith => __$LoadingCopyWithImpl<_Loading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingMore);

@override
String toString() {
  return 'AnimeSearchResultsState.loading(isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$LoadingCopyWith<$Res> implements $AnimeSearchResultsStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) _then) = __$LoadingCopyWithImpl;
@override @useResult
$Res call({
 bool isLoadingMore
});




}
/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(this._self, this._then);

  final _Loading _self;
  final $Res Function(_Loading) _then;

/// Create a copy of AnimeSearchResultsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoadingMore = null,}) {
  return _then(_Loading(
isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Loaded implements AnimeSearchResultsState {
  const _Loaded({this.isLoadingMore = false, required final  List<AnimeSearchEntity> searchResults}): _searchResults = searchResults;
  

@override@JsonKey() final  bool isLoadingMore;
 final  List<AnimeSearchEntity> _searchResults;
 List<AnimeSearchEntity> get searchResults {
  if (_searchResults is EqualUnmodifiableListView) return _searchResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResults);
}


/// Create a copy of AnimeSearchResultsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&const DeepCollectionEquality().equals(other._searchResults, _searchResults));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingMore,const DeepCollectionEquality().hash(_searchResults));

@override
String toString() {
  return 'AnimeSearchResultsState.loaded(isLoadingMore: $isLoadingMore, searchResults: $searchResults)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $AnimeSearchResultsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@override @useResult
$Res call({
 bool isLoadingMore, List<AnimeSearchEntity> searchResults
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of AnimeSearchResultsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoadingMore = null,Object? searchResults = null,}) {
  return _then(_Loaded(
isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,searchResults: null == searchResults ? _self._searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as List<AnimeSearchEntity>,
  ));
}


}

/// @nodoc


class _Failure implements AnimeSearchResultsState {
  const _Failure({this.isLoadingMore = false, required this.message});
  

@override@JsonKey() final  bool isLoadingMore;
 final  String message;

/// Create a copy of AnimeSearchResultsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingMore,message);

@override
String toString() {
  return 'AnimeSearchResultsState.failure(isLoadingMore: $isLoadingMore, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $AnimeSearchResultsStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@override @useResult
$Res call({
 bool isLoadingMore, String message
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of AnimeSearchResultsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoadingMore = null,Object? message = null,}) {
  return _then(_Failure(
isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
