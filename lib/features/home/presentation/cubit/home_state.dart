part of 'home_cubit.dart';

/// [isLoadingMore] flag to indicate whether the app is fetching additional data
/// applied to use for pagination
@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial({@Default(false) bool isLoadingMore}) =
      _Initial;
  const factory HomeState.loading({@Default(false) bool isLoadingMore}) =
      _Loading;
  const factory HomeState.loaded({
    required List<AnimeEntity> animes,
    @Default(false) bool isLoadingMore,
  }) = _Loaded;
  const factory HomeState.failure({
    required String message,
    @Default(false) bool isLoadingMore,
  }) = _Failure;
}
