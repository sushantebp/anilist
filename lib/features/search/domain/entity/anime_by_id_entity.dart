import 'package:anilist/features/search/domain/domain.dart';

class AnimeByIdEntity {
  final String? titleEnglish;
  final String? titleNative;
  final String? coverImageLarge;
  final int? episodes;
  final String? status;
  final int? trending;
  final List<String>? genres;
  final int? popularity;
  final AnimeTrailerEntity? trailer;
  final List<AnimeReviewEntity>? reviews;

  const AnimeByIdEntity({
    this.titleEnglish,
    this.titleNative,
    this.coverImageLarge,
    this.episodes,
    this.status,
    this.trending,
    this.genres,
    this.popularity,
    this.trailer,
    this.reviews,
  });
}
