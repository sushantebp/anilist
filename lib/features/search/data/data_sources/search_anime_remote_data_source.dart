import 'package:fpdart/fpdart.dart';

import 'package:anilist/core/core.dart';

import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_by_id.data.gql.dart';
import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_by_id.req.gql.dart';
import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_search.data.gql.dart';
import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_search.req.gql.dart';

abstract class SearchAnimeRemoteDataSource {
  Future<Result<GAnimeSearchData?>> fetchSearchAnimeList(
    int page,
    int perPage,
    String? search,
  );
  Future<Result<GAnimeByIdData?>> fetchAnimeDetails(int id);
}

class SearchAnimeRemoteDataSourceImpl extends SearchAnimeRemoteDataSource {
  final GraphQLService graphqlService;
  SearchAnimeRemoteDataSourceImpl({required this.graphqlService});
  @override
  Future<Result<GAnimeSearchData?>> fetchSearchAnimeList(
    int page,
    int perPage,
    String? search,
  ) async {
    final request = GAnimeSearchReq(
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

  @override
  Future<Result<GAnimeByIdData?>> fetchAnimeDetails(int id) async {
    final request = GAnimeByIdReq((b) => b..vars.id = id);
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
