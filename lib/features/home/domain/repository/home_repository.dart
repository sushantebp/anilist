import 'package:anilist/core/core.dart';
import 'package:anilist/features/home/domain/domain.dart';

abstract class HomeRepository {
  Future<Result<List<AnimeEntity>>> getAnimeList(
    int page,
    int perPage,
    String? search,
  );
}
