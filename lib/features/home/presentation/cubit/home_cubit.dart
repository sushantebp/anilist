import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:anilist/features/home/domain/domain.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final FetchAnimeListUsecase fetchAnimeListUsecase;

  /// [_currentPage] holds the current page index.
  /// [_perPage] holds the amount of items to fetch in each chunk.
  /// [_hasMore] indicates whether there are more items to load.
  /// [_loadedAnimes] is the list where fetched items are accumulated.
  ///
  HomeCubit({required this.fetchAnimeListUsecase})
    : super(const HomeState.initial());

  int _currentPage = 1;
  final int _perPage = 10;
  final List<AnimeEntity> _loadedAnimes = [];
  bool _hasMore = true;

  /// [isLoadingMore] is a state that indicates whether the list is currently being fetched.
  ///
  /// Logic:
  /// If a chunk is currently being fetched ([state.isLoadingMore]) or there are no more items (_hasMore is false),
  /// the function returns early.
  /// Otherwise, the state is updated to loading more with the currently loaded animes.
  /// The current page and per page values are passed to the data source to fetch the correct chunk.
  ///
  /// If [newAnimes], the fetched list, is empty, [_hasMore] is set to false, indicating no more data to load.
  /// On success, [newAnimes] are added to [_loadedAnimes], and [_currentPage] is incremented for the next fetch.
  /// Finally, the state is emitted with the updated list and isLoadingMore set to false.

  Future<void> fetchAnimes() async {
    if (state.isLoadingMore || !_hasMore) return;

    // Update state to loading more
    final currentAnimes = state.maybeWhen(
      loaded: (animes, _) => animes,
      orElse: () => _loadedAnimes,
    );

    emit(HomeState.loaded(animes: currentAnimes, isLoadingMore: true));

    try {
      final result = await fetchAnimeListUsecase.call(
        _currentPage,
        _perPage,
        null,
      );

      result.fold(
        (failure) => emit(HomeState.failure(message: failure.message)),
        (newAnimes) {
          if (newAnimes.isEmpty) {
            _hasMore = false;
          } else {
            _loadedAnimes.addAll(newAnimes);
            _currentPage++;
          }
          emit(HomeState.loaded(animes: _loadedAnimes, isLoadingMore: false));
        },
      );
    } catch (e) {
      emit(HomeState.failure(message: e.toString()));
    }
  }
}
