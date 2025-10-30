import 'package:anilist/core/core.dart';
import 'package:anilist/features/search/domain/domain.dart';

abstract class SearchRepository {
  Future<Result<List<AnimeSearchEntity>>> getSearchAnime(
    int page,
    int perPage,
    String? search,
  );

  Future<Result<AnimeByIdEntity>> getAnimeDetails(int id);
}
