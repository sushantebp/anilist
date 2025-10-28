import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:anilist/features/home/domain/domain.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final FetchAnimeListUsecase fetchAnimeListUsecase;

  HomeCubit({required this.fetchAnimeListUsecase}) : super(HomeState.initial());

  int _currentPage = 1;
  final _perPage = 10;
  final List<AnimeEntity> _loadedAnime = [];
  Future<void> fetchAnimes() async {
    if (_currentPage == 1) {
      emit(const HomeState.loading());
    }
    try {
      final result = await fetchAnimeListUsecase.call(
        _currentPage,
        _perPage,
        null,
      );

      result.fold(
        (failure) => emit(HomeState.failure(message: failure.message)),
        (animes) {
          _loadedAnime.addAll(animes);
          _currentPage++;
          emit(HomeState.loaded(animes: _loadedAnime));
        },
      );
    } catch (e) {
      emit(HomeState.failure(message: e.toString()));
    }
  }
}
