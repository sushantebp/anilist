import 'package:anilist/core/core.dart';
import 'package:anilist/features/search/search.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            initial: () => const Center(
              child: Text("Waiting, data will be fetched shortly"),
            ),

            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (anime) => SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Cover Image
                  if (anime.coverImageLarge != null)
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          anime.coverImageLarge!,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  const SizedBox(height: 16),

                  // Titles
                  Text(
                    anime.titleEnglish ?? anime.titleNative ?? "No Title",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (anime.titleEnglish != null && anime.titleNative != null)
                    Text(
                      anime.titleNative!,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  const SizedBox(height: 16),

                  // Info Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (anime.episodes != null)
                        Text("Episodes: ${anime.episodes}"),
                      if (anime.status != null) Text("Status: ${anime.status}"),
                      if (anime.trending != null)
                        Text("Trending: ${anime.trending}"),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Popularity
                  if (anime.popularity != null)
                    Text("Popularity: ${anime.popularity}"),
                  const SizedBox(height: 16),

                  // Genres
                  if (anime.genres != null && anime.genres!.isNotEmpty)
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 4.0,
                      children: anime.genres!
                          .map(
                            (genre) => Chip(
                              label: Text(genre),
                              backgroundColor: Colors.blue.shade100,
                            ),
                          )
                          .toList(),
                    ),
                  const SizedBox(height: 16),

                  // Trailer
                  if (anime.trailer != null && anime.trailer!.site != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Trailer",
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        GestureDetector(
                          onTap: () {
                            // Launch trailer URL with url_launcher or a video player
                          },
                          child: Text(
                            anime.trailer!.site!,
                            style: const TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(height: 16),

                  // Reviews
                  if (anime.reviews != null && anime.reviews!.isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Reviews",
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        ...anime.reviews!.map(
                          (review) => Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (review.user?.avatar != null)
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      review.user!.avatar!,
                                    ),
                                  ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (review.user?.name != null)
                                        Text(
                                          review.user!.name!,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      if (review.summary != null)
                                        Text(review.summary!),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            failed: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
