part of 'search_results_cubit.dart';

/// [isSearching] indicator for debouncing
/// [isLoadingMore] indicator for pagination
/// [searchResults] holds list of [AnimeSearchEntity] on searching
///
@freezed
abstract class SearchResultsState with _$SearchResultsState {
  const factory SearchResultsState.initial({
    @Default(false) bool isSearching,
    @Default(false) bool isLoadingMore,
  }) = _Initial;
  const factory SearchResultsState.loading({
    @Default(false) bool isSearching,
    @Default(false) bool isLoadingMore,
  }) = _Loading;
  const factory SearchResultsState.loaded({
    @Default(false) bool isSearching,
    @Default(false) bool isLoadingMore,
    required List<AnimeSearchEntity> searchResults,
  }) = _Loaded;
  const factory SearchResultsState.failure({
    @Default(false) bool isSearching,
    @Default(false) bool isLoadingMore,
    required String message,
  }) = _Failure;
}
