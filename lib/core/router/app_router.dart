import 'package:anilist/features/home/home.dart';
import 'package:anilist/features/search/search.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends RootStackRouter {
  AppRouter._internal();

  static final AppRouter _instance = AppRouter._internal();

  factory AppRouter() => _instance;

  static AppRouter get instance => _instance;

  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: HomeRoute.page),
    AutoRoute(page: AnimeSearchRoute.page),
    AutoRoute(page: AnimeDetailsRoute.page),
  ];
}
