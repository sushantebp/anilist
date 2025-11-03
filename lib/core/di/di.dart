import 'package:anilist/core/core.dart';
import 'package:anilist/features/home/home.dart';
import 'package:anilist/features/search/data/data.dart';
import 'package:anilist/features/search/domain/repositories/search_repository.dart';
import 'package:anilist/features/search/domain/usecases/get_anime_details_usecase.dart';
import 'package:anilist/features/search/domain/usecases/get_search_anime_usecase.dart';
import 'package:anilist/features/search/presentation/presentation.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void setupDependencies() {
  sl.registerSingleton<DioClient>(DioClient());
  sl.registerSingleton<GraphqlService>(GraphqlService());

  registerHomeDependencies();
  registerSearchDependencies();
}

void registerHomeDependencies() {
  sl.registerLazySingleton<AnimeListRemoteDataSource>(
    () => AnimeListRemoteDataSourceImpl(graphqlService: sl<GraphqlService>()),
  );

  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
      animeListRemoteDataSource: sl<AnimeListRemoteDataSource>(),
    ),
  );

  sl.registerLazySingleton<FetchAnimeListUsecase>(
    () => FetchAnimeListUsecase(sl<HomeRepository>()),
  );

  sl.registerFactory<HomeCubit>(
    () => HomeCubit(fetchAnimeListUsecase: sl<FetchAnimeListUsecase>()),
  );
}

void registerSearchDependencies() {
  sl.registerLazySingleton<SearchAnimeRemoteDataSource>(
    () => SearchAnimeRemoteDataSourceImpl(graphqlService: sl<GraphqlService>()),
  );
  sl.registerLazySingleton<SearchRepository>(
    () => SearchRepositoryImpl(
      searchAnimeRemoteDataSource: sl<SearchAnimeRemoteDataSource>(),
    ),
  );
  sl.registerLazySingleton<GetSearchAnimeUsecase>(
    () => GetSearchAnimeUsecase(sl<SearchRepository>()),
  );
  sl.registerFactory<AnimeSearchResultsCubit>(
    () => AnimeSearchResultsCubit(
      getSearchAnimeUsecase: sl<GetSearchAnimeUsecase>(),
    ),
  );
  sl.registerLazySingleton<GetAnimeDetailsUsecase>(
    () => GetAnimeDetailsUsecase(sl<SearchRepository>()),
  );
  sl.registerFactory<AnimeDetailsCubit>(
    () =>
        AnimeDetailsCubit(getAnimeDetailsUsecase: sl<GetAnimeDetailsUsecase>()),
  );
}
