import 'package:anilist/core/core.dart';
import 'package:anilist/features/home/domain/domain.dart';

class FetchAnimeListUsecase {
  final HomeRepository _homeRepository;
  FetchAnimeListUsecase(this._homeRepository);

  Stream<Result<List<AnimeEntity>>> call() {
    return _homeRepository.getAnimeList();
  }
}
