import 'package:anilist/core/core.dart';
import 'package:anilist/features/search/domain/domain.dart';

class GetSearchAnimeUsecase {
  final SearchRepository _searchRepository;
  GetSearchAnimeUsecase(this._searchRepository);

  Future<Result<List<AnimeSearchEntity>>> call(
    int page,
    int perPage,
    String? search,
  ) => _searchRepository.getSearchAnime(page, perPage, search);
}
