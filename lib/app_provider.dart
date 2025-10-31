import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:anilist/anilist.dart';
import 'package:anilist/core/core.dart';

import 'features/home/home.dart';
import 'features/search/search.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              HomeCubit(fetchAnimeListUsecase: sl<FetchAnimeListUsecase>()),
        ),
        BlocProvider(
          create: (_) => AnimeSearchResultsCubit(
            getSearchAnimeUsecase: sl<GetSearchAnimeUsecase>(),
          ),
        ),
        BlocProvider(
          create: (_) => AnimeDetailsCubit(
            getAnimeDetailsUsecase: sl<GetAnimeDetailsUsecase>(),
          ),
        ),
      ],
      child: const Anilist(),
    );
  }
}
