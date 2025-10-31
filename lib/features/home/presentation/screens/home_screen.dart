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
    return Scaffold(
      appBar: const MyAppBar(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: (_) =>
                const Center(child: Text("Fetching animes... Please wait")),
            loading: (_) =>
                const Center(child: CircularProgressIndicator.adaptive()),
            loaded: (animes, isLoadingMore) => Padding(
              padding: const EdgeInsets.all(AppSize.paddingMedium),
              child: GridView.builder(
                controller: _scrollController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.65,
                ),
                itemCount: animes.length + (isLoadingMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index >= animes.length) {
                    return const Align(
                      alignment: Alignment.centerRight,
                      child: CircularProgressIndicator.adaptive(),
                    );
                  }
                  return AnimeCard(anime: animes[index]);
                },
              ),
            ),
            failure: (message, _) => Center(
              child: Text(message, style: context.textTheme.headlineMedium),
            ),
          );
        },
      ),
    );
  }
}
