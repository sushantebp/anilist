import 'package:anilist/core/core.dart';
import 'package:anilist/features/home/data/data.dart';
import 'package:anilist/features/home/domain/domain.dart';
import 'package:anilist/features/home/graphql/__generated__/get_anime_list.data.gql.dart';
import 'package:fpdart/fpdart.dart';

class HomeRepositoryImpl extends HomeRepository {
  final AnimeListRemoteDataSource animeListRemoteDataSource;

  HomeRepositoryImpl({required this.animeListRemoteDataSource});

  /// Fetches a single page of anime from the remote data source
  /// Converts [GGetAnimeListData_Page_media] -> [AnimeModel] -> [AnimeEntity]
  @override
  Future<Result<List<AnimeEntity>>> getAnimeList(
    int page,
    int perPage,
    String? search,
  ) async {
    try {
      final result = await animeListRemoteDataSource.fetchListAnime(
        page,
        perPage,
        search,
      );

      return result.map((data) {
        final mediaList =
            data?.Page?.media?.whereType<GGetAnimeListData_Page_media>() ?? [];

        final animeModels = (mediaList)
            .map(
              (media) => AnimeModel(
                id: media.id,
                title: media.title?.english ?? 'Unknown',
                episodes: media.episodes,
                description: media.description ?? 'Unknown',
                coverImage: media.coverImage?.large,
                status: media.status?.name,
              ),
            )
            .toList();

        final animeEntities = animeModels
            .map((model) => model.toEntity())
            .toList();

        return animeEntities;
      });
    } catch (e) {
      return Left(UnknownException(e.toString()));
    }
  }
}
