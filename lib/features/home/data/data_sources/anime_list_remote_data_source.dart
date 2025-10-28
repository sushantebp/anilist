import 'package:anilist/core/core.dart';
import 'package:anilist/features/home/graphql/__generated__/get_anime_list.data.gql.dart';
import 'package:anilist/features/home/graphql/__generated__/get_anime_list.req.gql.dart';
import 'package:fpdart/fpdart.dart';

abstract class AnimeListRemoteDataSource {
  Stream<Result<GGetAnimeListData?>> fetchListAnime({
    int page,
    int perPage,
    String? search,
  });
}

class AnimeListRemoteDataSourceImpl extends AnimeListRemoteDataSource {
  final GraphqlService graphqlService;
  AnimeListRemoteDataSourceImpl({required this.graphqlService});

  /// [request] is an instance of [OperationRequest] which contains all information
  /// needed to execute the operation, including the query or mutation,
  /// variables, and any optimistic response.
  ///
  /// Returns a [Stream] of [OperationResponse] objects which emit updates about
  /// the operation's lifecycle, such as loading, cache data, network response,
  /// and errors.
  @override
  Stream<Result<GGetAnimeListData?>> fetchListAnime({
    int page = 0,
    int perPage = 20,
    String? search,
  }) {
    final request = GGetAnimeListReq(
      (b) => b
        ..vars.page = page
        ..vars.perPage = perPage
        ..vars.search = search,
    );
    return graphqlService.client.request(request).map((response) {
      if (response.hasErrors) {
        return Left(
          UnknownException(
            response.graphqlErrors?.first.message ?? 'Unknown GraphQL error',
          ),
        );
      }
      return Right(response.data);
    });
  }
}
