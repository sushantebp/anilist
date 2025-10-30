import 'package:anilist/core/core.dart';
import 'package:anilist/features/search/domain/domain.dart';

class GetAnimeDetailsUsecase {
  final SearchRepository _searchRepository;
  GetAnimeDetailsUsecase(this._searchRepository);

  Future<Result<AnimeByIdEntity>> getAnimeDetails(int id) =>
      _searchRepository.getAnimeDetails(id);
}
