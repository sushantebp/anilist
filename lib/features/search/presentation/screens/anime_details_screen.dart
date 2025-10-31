import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

import 'package:anilist/core/core.dart';
import 'package:anilist/features/search/search.dart';

@RoutePage()
class AnimeDetailsScreen extends StatelessWidget {
  final int id;
  const AnimeDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    context.read<AnimeDetailsCubit>().getAnimeDetail(id);

    return Scaffold(
      appBar: const MyAppBar(allowBack: true),
      body: BlocBuilder<AnimeDetailsCubit, AnimeDetailsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text("Preparing request...")),
            loading: () =>
                const Center(child: CircularProgressIndicator.adaptive()),
            failed: (message) => Center(child: Text(message)),
            loaded: (anime) => SingleChildScrollView(
              padding: const EdgeInsets.all(AppSize.paddingLarge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimeCoverSection(imageUrl: anime.coverImageLarge),
                  const SizedBox(height: AppSize.spaceLarge),
                  AnimeTitleSection(
                    englishTitle: anime.titleEnglish,
                    nativeTitle: anime.titleNative,
                  ),
                  const SizedBox(height: AppSize.spaceMedium),
                  AnimeInfoRow(
                    episodes: anime.episodes,
                    status: anime.status,
                    trending: anime.trending,
                  ),
                  SizedBox(height: AppSize.spaceMedium),
                  AnimePopularity(popularity: anime.popularity),
                  SizedBox(height: AppSize.spaceMedium),
                  AnimeGenres(genres: anime.genres),
                  SizedBox(height: AppSize.spaceLarge),
                  AnimeTrailerSection(site: anime.trailer?.site),
                  SizedBox(height: AppSize.spaceLarge),
                  AnimeReviewsSection(reviews: anime.reviews),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
