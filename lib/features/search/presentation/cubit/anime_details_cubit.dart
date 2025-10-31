import 'package:anilist/features/search/domain/domain.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_details_state.dart';
part 'anime_details_cubit.freezed.dart';

class AnimeDetailsCubit extends Cubit<AnimeDetailsState> {
  final GetAnimeDetailsUsecase getAnimeDetailsUsecase;

  AnimeDetailsCubit({required this.getAnimeDetailsUsecase})
    : super(const _Initial());

  Future<void> getAnimeDetail(int id) async {
    emit(const _Loading());
    try {
      final result = await getAnimeDetailsUsecase.getAnimeDetails(id);
      result.fold(
        (failure) => emit(_Failed(message: failure.message)),
        (animeDetails) => emit(_Loaded(animeDetails: animeDetails)),
      );
    } catch (e) {
      emit(_Failed(message: e.toString()));
    }
  }
}
