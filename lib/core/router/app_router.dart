import 'package:anilist/features/home/home.dart';
import 'package:anilist/features/search/search.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends RootStackRouter {
  AppRouter._();
  static final AppRouter instance = AppRouter._();

  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: false, page: HomeRoute.page),
    AutoRoute(initial: true, page: AnimeSearchRoute.page),
    AutoRoute(page: AnimeDetailsRoute.page),
  ];
}
