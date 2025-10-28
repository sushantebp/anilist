import 'package:anilist/core/core.dart';
import 'package:anilist/features/home/domain/domain.dart';

class FetchAnimeListUsecase {
  final HomeRepository _homeRepository;
  FetchAnimeListUsecase(this._homeRepository);

  Future<Result<List<AnimeEntity>>> call(
    int page,
    int perPage,
    String? search,
  ) => _homeRepository.getAnimeList(page, perPage, search);
}
