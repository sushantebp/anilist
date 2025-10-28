import 'package:anilist/core/core.dart';
import 'package:anilist/features/home/data/data.dart';
import 'package:anilist/features/home/domain/domain.dart';
import 'package:anilist/features/home/home.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void setupDependencies() {
  sl.registerSingleton<DioClient>(DioClient());
  sl.registerSingleton<GraphqlService>(GraphqlService());

  sl.registerLazySingleton<AnimeListRemoteDataSource>(
    () => AnimeListRemoteDataSourceImpl(graphqlService: sl<GraphqlService>()),
  );

  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
      animeListRemoteDataSource: sl<AnimeListRemoteDataSource>(),
    ),
  );

  sl.registerFactory<HomeCubit>(
    () => HomeCubit(homeRepository: sl<HomeRepository>()),
  );
}
