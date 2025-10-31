part of 'anime_search_results_cubit.dart';

/// [isSearching] indicator for debouncing
/// [isLoadingMore] indicator for pagination
/// [searchResults] holds list of [AnimeSearchEntity] on searching
///
@freezed
abstract class AnimeSearchResultsState with _$AnimeSearchResultsState {
  const factory AnimeSearchResultsState.initial({
    @Default(false) bool isLoadingMore,
  }) = _Initial;
  const factory AnimeSearchResultsState.loading({
    @Default(false) bool isLoadingMore,
  }) = _Loading;
  const factory AnimeSearchResultsState.loaded({
    @Default(false) bool isLoadingMore,
    required List<AnimeSearchEntity> searchResults,
  }) = _Loaded;
  const factory AnimeSearchResultsState.failure({
    @Default(false) bool isLoadingMore,
    required String message,
  }) = _Failure;
}
