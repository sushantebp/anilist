import 'package:anilist/features/home/home.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter._();
  static final AppRouter instance = AppRouter._();

  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: HomeRoute.page),
  ];
}
