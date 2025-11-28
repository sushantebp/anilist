// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AnimeDetailsScreen]
class AnimeDetailsRoute extends PageRouteInfo<AnimeDetailsRouteArgs> {
  AnimeDetailsRoute({Key? key, required int id, List<PageRouteInfo>? children})
    : super(
        AnimeDetailsRoute.name,
        args: AnimeDetailsRouteArgs(key: key, id: id),
        initialChildren: children,
      );

  static const String name = 'AnimeDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AnimeDetailsRouteArgs>();
      return AnimeDetailsScreen(key: args.key, id: args.id);
    },
  );
}

class AnimeDetailsRouteArgs {
  const AnimeDetailsRouteArgs({this.key, required this.id});

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'AnimeDetailsRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AnimeDetailsRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [AnimeSearchScreen]
class AnimeSearchRoute extends PageRouteInfo<void> {
  const AnimeSearchRoute({List<PageRouteInfo>? children})
    : super(AnimeSearchRoute.name, initialChildren: children);

  static const String name = 'AnimeSearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AnimeSearchScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}
