part of 'anime_details_cubit.dart';

@freezed
abstract class AnimeDetailsState with _$AnimeDetailsState {
  const factory AnimeDetailsState.initial() = _Initial;
  const factory AnimeDetailsState.loading() = _Loading;
  const factory AnimeDetailsState.loaded({
    required AnimeByIdEntity animeDetails,
  }) = _Loaded;
  const factory AnimeDetailsState.failed({required String message}) = _Failed;
}
