import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:anilist/features/search/search.dart';

part 'anime_search_results_state.dart';
part 'anime_search_results_cubit.freezed.dart';

/// Cubit to handle search results for anime
/// Features:
/// - Debouncing input to avoid excessive API calls
/// - Pagination
/// - Tracks loading, error, and results
class AnimeSearchResultsCubit extends Cubit<AnimeSearchResultsState> {
  final GetSearchAnimeUsecase getSearchAnimeUsecase;

  AnimeSearchResultsCubit({required this.getSearchAnimeUsecase})
    : super(const _Initial());

  /// Pagination tracking
  int _currentPage = 1;
  final int _perPage = 20;
  bool _hasMore = true;

  /// Cached results
  final List<AnimeSearchEntity> _loadedSearchResults = [];

  /// Debounce timer to avoid hitting API on every keystroke
  Timer? _debounce;

  /// Search function called on text change
  void search(String query) {
    // Cancel previous debounce if still active
    _debounce?.cancel();

    // Clear results if query is empty
    if (query.isEmpty) {
      _currentPage = 1;
      _hasMore = true;
      _loadedSearchResults.clear();
      emit(const _Initial());
      return;
    }

    // Debounce API call for 500ms
    _debounce = Timer(
      const Duration(milliseconds: 500),
      () => _performSearch(query),
    );
  }

  /// Internal method to perform the actual API call
  Future<void> _performSearch(String query) async {
    if (state.isLoadingMore || !_hasMore) return;

    // Keep previously loaded results while loading more
    final currentResults = state.maybeWhen(
      loaded: (_, results) => results,
      orElse: () => _loadedSearchResults,
    );

    // Emit loading state
    emit(_Loaded(searchResults: currentResults, isLoadingMore: true));

    try {
      final results = await getSearchAnimeUsecase.call(
        _currentPage,
        _perPage,
        query,
      );

      results.fold(
        (failure) {
          emit(_Failure(message: failure.message, isLoadingMore: false));
        },
        (searchResults) {
          if (searchResults.isEmpty) {
            _hasMore = false; // No more data to load
          } else {
            _currentPage++;
            _loadedSearchResults.addAll(searchResults);
          }

          emit(
            _Loaded(searchResults: _loadedSearchResults, isLoadingMore: false),
          );
        },
      );
    } catch (e) {
      emit(_Failure(message: e.toString(), isLoadingMore: false));
    }
  }

  /// Resets search completely
  void resetSearch() {
    _currentPage = 1;
    _hasMore = true;
    _loadedSearchResults.clear();
    emit(const _Initial());
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }
}
