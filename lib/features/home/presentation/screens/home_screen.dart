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
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    context.read<HomeCubit>().fetchAnimes();
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        bool isBottom =
            _scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent;

        if (isBottom) {
          context.read<HomeCubit>().fetchAnimes();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Welcome!')),
            loading: () =>
                const Center(child: CircularProgressIndicator.adaptive()),
            loaded: (animes) => GridView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.65,
              ),
              itemCount: animes.length,
              itemBuilder: (context, index) {
                if (index == animes.length) {
                  return const CircularProgressIndicator.adaptive();
                }
                final anime = animes[index];
                return AnimeCard(anime: anime);
              },
            ),

            failure: (message) => Center(
              child: Text(
                message,
                style: context.textTheme.headlineMedium?.copyWith(
                  color: context.colorScheme.error,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
