import 'package:fpdart/fpdart.dart';

import 'package:anilist/core/core.dart';
import 'package:anilist/features/search/data/data.dart';
import 'package:anilist/features/search/domain/domain.dart';

import 'package:anilist/features/search/graphql/__generated__/anime_by_id.data.gql.dart';
import 'package:anilist/features/search/graphql/__generated__/anime_search.data.gql.dart';

class SearchRepositoryImpl extends SearchRepository {
  final SearchAnimeRemoteDataSource searchAnimeRemoteDataSource;
  SearchRepositoryImpl({required this.searchAnimeRemoteDataSource});

  /// Fetches a list of page of anime associated with search keywords and single page from the remote data source
  /// Converts list of [GAnimeSearchData] to -> list of [AnimeSearchModel] to ->  list of [AnimeSearchEntity]
  @override
  Future<Result<List<AnimeSearchEntity>>> getSearchAnime(
    int page,
    int perPage,
    String? search,
  ) async {
    try {
      final result = await searchAnimeRemoteDataSource.fetchSearchAnimeList(
        page,
        perPage,
        search,
      );

      return result.map((data) {
        final mediaList =
            data?.Page?.media?.whereType<GAnimeSearchData_Page_media>() ?? [];

        final animeSearchModels = (mediaList)
            .map(
              (media) => AnimeSearchModel(
                id: media.id,
                titleEnglish: media.title?.english,
                coverImage: media.coverImage?.medium,
              ),
            )
            .toList();

        final animeSearchEntities = animeSearchModels
            .map((model) => model.toEntity())
            .toList();

        return animeSearchEntities;
      });
    } catch (e) {
      return Left(UnknownException(e.toString()));
    }
  }

  /// on success [GAnimeByIdData] provide all the anime details
  /// Converts [GAnimeByIdData] -> [AnimeByIdEntity]
  @override
  Future<Result<AnimeByIdEntity>> getAnimeDetails(int id) async {
    try {
      final result = await searchAnimeRemoteDataSource.fetchAnimeDetails(id);

      return result.fold((e) => Left(e), (gData) {
        final media = gData?.Media;
        if (media == null) {
          return const Left(UnknownException('Anime not found'));
        }

        final animeEntity = AnimeByIdEntity(
          titleEnglish: media.title?.english,
          titleNative: media.title?.native,
          coverImageLarge: media.coverImage?.large,
          episodes: media.episodes,
          status: media.status?.name,
          trending: media.trending,
          genres: media.genres?.whereType<String>().toList(),
          popularity: media.popularity,
          trailer: media.trailer == null
              ? null
              : AnimeTrailerEntity(
                  thumbnail: media.trailer!.thumbnail,
                  site: media.trailer!.site,
                ),
          reviews: media.reviews?.edges
              ?.map((edge) {
                final node = edge?.node;
                if (node == null) return null;
                return AnimeReviewEntity(
                  summary: node.summary,
                  user: node.user == null
                      ? null
                      : AnimeReviewUserEntity(
                          name: node.user!.name,
                          avatar: node.user!.avatar?.medium,
                        ),
                );
              })
              .whereType<AnimeReviewEntity>()
              .toList(),
        );

        return Right(animeEntity);
      });
    } catch (e) {
      return Left(UnknownException(e.toString()));
    }
  }
}
