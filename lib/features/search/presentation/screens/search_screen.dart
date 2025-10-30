import 'package:anilist/core/core.dart';
import 'package:anilist/features/search/search.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _serchController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        context.read<SearchResultsCubit>().search(_serchController.text);
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
      appBar: const MyAppBar(),
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
                  context.read<SearchResultsCubit>().search(value),
            ),
            const SizedBox(height: 10),

            /// Suggestions / results list
            Expanded(
              child: BlocBuilder<SearchResultsCubit, SearchResultsState>(
                builder: (context, state) {
                  return state.when(
                    initial: (_, _) =>
                        const Center(child: Text("Start typing to search...")),
                    loading: (_, _) => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                    failure: (_, _, message) =>
                        Center(child: Text("Error: $message")),
                    loaded: (_, isLoadingMore, results) {
                      if (results.isEmpty) {
                        return const Center(child: Text("No results found"));
                      }

                      return ListView.separated(
                        controller: _scrollController,
                        itemCount: results.length + (isLoadingMore ? 1 : 0),
                        separatorBuilder: (_, __) => const Divider(height: 1),
                        itemBuilder: (context, index) {
                          if (index >= results.length) {
                            return const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: CircularProgressIndicator.adaptive(),
                              ),
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
                            title: Text(anime.titleEnglish ?? "Unknown title"),
                            onTap: () {
                              // TODO: apply AnimeDetailsRoute
                            },
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
