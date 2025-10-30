part of 'search_details_cubit.dart';

@freezed
abstract class SearchDetailsState with _$SearchDetailsState {
  const factory SearchDetailsState.initial({
    @Default(false) isDetailsAvailable,
  }) = _Initial;
  const factory SearchDetailsState.loading({
    @Default(false) isDetailsAvailable,
  }) = _Loading;
  const factory SearchDetailsState.loaded({
    @Default(false) isDetailsAvailable,
    required AnimeByIdEntity animeDetails,
  }) = _Loaded;
  const factory SearchDetailsState.failure({
    @Default(false) isDetailsAvailable,
    required String message,
  }) = _Failure;
}
