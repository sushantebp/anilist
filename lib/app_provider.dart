import 'package:anilist/anilist.dart';
import 'package:anilist/core/core.dart';
import 'package:anilist/features/home/home.dart';
import 'package:anilist/features/search/domain/domain.dart';
import 'package:anilist/features/search/presentation/cubit/search_results_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/domain/domain.dart';

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
          create: (_) => SearchResultsCubit(
            getSearchAnimeUsecase: sl<GetSearchAnimeUsecase>(),
          ),
        ),
      ],
      child: const Anilist(),
    );
  }
}
