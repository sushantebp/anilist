import 'package:anilist/core/core.dart';
import 'package:anilist/features/search/search.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AnimeSearchScreen extends StatefulWidget {
  const AnimeSearchScreen({super.key});

  @override
  State<AnimeSearchScreen> createState() => _AnimeSearchScreenState();
}

class _AnimeSearchScreenState extends State<AnimeSearchScreen> {
  final _serchController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        context.read<AnimeSearchResultsCubit>().search(_serchController.text);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _serchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(allowBack: true),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Search input field
            CustomTextField(
              controller: _serchController,
              placeholder: "Search anime...",
              prefix: const Icon(Icons.search),
              onChanged: (value) =>
                  context.read<AnimeSearchResultsCubit>().search(value),
            ),
            const SizedBox(height: 10),

            /// Suggestions / results list
            Expanded(
              child:
                  BlocBuilder<AnimeSearchResultsCubit, AnimeSearchResultsState>(
                    builder: (context, state) {
                      return state.when(
                        initial: (_) => const Center(
                          child: Text("Start typing to search..."),
                        ),
                        loading: (_) => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                        failure: (_, message) =>
                            Center(child: Text("Error: $message")),
                        loaded: (isLoadingMore, results) {
                          if (results.isEmpty) {
                            return const Center(
                              child: Text("No results found"),
                            );
                          }

                          return ListView.separated(
                            controller: _scrollController,
                            itemCount: results.length + (isLoadingMore ? 1 : 0),
                            separatorBuilder: (_, __) =>
                                const Divider(height: 1),
                            itemBuilder: (context, index) {
                              if (index >= results.length) {
                                return const Align(
                                  alignment: Alignment.center,
                                  child: CircularProgressIndicator.adaptive(),
                                );
                              }

                              final anime = results[index];
                              return ListTile(
                                leading: anime.coverImage != null
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.network(
                                          anime.coverImage!,
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : const Icon(Icons.image_not_supported),
                                title: Text(
                                  anime.titleEnglish ?? "Unknown title",
                                ),
                                onTap: () => context.router.push(
                                  AnimeDetailsRoute(id: anime.id),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
