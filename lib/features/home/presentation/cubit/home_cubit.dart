import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:anilist/features/home/domain/domain.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final FetchAnimeListUsecase fetchAnimeListUsecase;
  
  HomeCubit({required this.fetchAnimeListUsecase})
    : super(const HomeState.initial());

  int _currentPage = 1;
  final int _perPage = 10;
  final List<AnimeEntity> _loadedAnimes = [];
  bool _hasMore = true;

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
