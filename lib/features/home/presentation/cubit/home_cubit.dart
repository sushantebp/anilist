import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:anilist/features/home/domain/domain.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository homeRepository;
  StreamSubscription? _subscription;

  HomeCubit({required this.homeRepository}) : super(HomeState.initial());

  void fetchAnimes() {
    emit(const HomeState.loading());
    _subscription?.cancel();
    _subscription = homeRepository.getAnimeList().listen((result) {
      result.fold(
        (failure) => emit(HomeState.failure(message: failure.message)),
        (animes) => emit(HomeState.loaded(animes: animes)),
      );
    }, onError: (error) => emit(HomeState.failure(message: error.toString())));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
