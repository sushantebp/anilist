import 'package:anilist/core/core.dart';
import 'package:anilist/features/home/data/data_sources/graphql/__generated__/get_anime_list.data.gql.dart';
import 'package:anilist/features/home/data/data_sources/graphql/__generated__/get_anime_list.req.gql.dart';
import 'package:fpdart/fpdart.dart';

abstract class AnimeListRemoteDataSource {
  Future<Result<GGetAnimeListData?>> fetchListAnime(
    int page,
    int perPage,
    String? search,
  );
}

/// [request] is an instance of [OperationRequest] which contains all information
/// needed to execute the operation, including the query or mutation,
/// variables, and any optimistic response.
///
/// Returns a [Stream] of [OperationResponse] objects which emit updates about
/// the operation's lifecycle, such as loading, cache data, network response,
/// and errors.

class AnimeListRemoteDataSourceImpl extends AnimeListRemoteDataSource {
  final GraphQLService graphqlService;
  AnimeListRemoteDataSourceImpl({required this.graphqlService});

  @override
  Future<Result<GGetAnimeListData?>> fetchListAnime(
    int page,
    int perPage,
    String? search,
  ) async {
    final request = GGetAnimeListReq(
      (b) => b
        ..vars.page = page
        ..vars.perPage = perPage
        ..vars.search = search,
    );

    try {
      final response = await graphqlService.client.request(request).first;

      if (response.hasErrors) {
        return Left(
          UnknownException(
            response.graphqlErrors?.first.message ?? 'Unknown GraphQL error',
          ),
        );
      }

      return Right(response.data);
    } catch (e) {
      return Left(UnknownException(e.toString()));
    }
  }
}
