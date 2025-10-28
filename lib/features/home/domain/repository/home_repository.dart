import 'package:anilist/core/core.dart';
import 'package:anilist/features/home/domain/domain.dart';

abstract class HomeRepository {
  Stream<Result<List<AnimeEntity>>> getAnimeList();
}
