import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:anilist/core/core.dart';
import 'package:anilist/features/home/presentation/presentation.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().fetchAnimes();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        context.read<HomeCubit>().fetchAnimes();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final router = context.router;

    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: (_) =>
                const Center(child: Text("Fetching animes... Please wait")),
            loading: (_) =>
                const Center(child: CircularProgressIndicator.adaptive()),
            loaded: (animes, isLoadingMore) {
              return CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverAppBar(),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.paddingMedium,
                      ),
                      child: InkWell(
                        onTap: () => router.push(const AnimeSearchRoute()),
                        child: CustomTextField(
                          showClearButtonOnTyping: true,
                          prefix: Icon(Icons.search),
                          placeholder: "Search Anime",
                          enabled: false,
                        ),
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(AppSize.paddingMedium),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            childAspectRatio: 0.65,
                          ),
                      delegate: SliverChildBuilderDelegate((context, index) {
                        if (index >= animes.length) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        }
                        final anime = animes[index];
                        return InkWell(
                          onTap: () => context.router.push(
                            AnimeDetailsRoute(id: anime.id),
                          ),
                          child: AnimeCard(anime: anime),
                        );
                      }, childCount: animes.length + (isLoadingMore ? 1 : 0)),
                    ),
                  ),
                ],
              );
            },
            failure: (message, _) => Center(
              child: Text(message, style: context.textTheme.headlineMedium),
            ),
          );
        },
      ),
    );
  }
}
