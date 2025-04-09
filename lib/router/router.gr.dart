// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:new_anime_app/features/discover/view/discover_screen.dart'
    as _i1;
import 'package:new_anime_app/features/favorite/view/favorite_screen.dart'
    as _i2;
import 'package:new_anime_app/features/history/view/history_screen.dart' as _i3;
import 'package:new_anime_app/features/home/view/home_page.dart' as _i4;
import 'package:new_anime_app/features/profile/view/profile_screen.dart' as _i5;

/// generated route for
/// [_i1.DiscoverScreen]
class DiscoverRoute extends _i6.PageRouteInfo<void> {
  const DiscoverRoute({List<_i6.PageRouteInfo>? children})
    : super(DiscoverRoute.name, initialChildren: children);

  static const String name = 'DiscoverRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.DiscoverScreen();
    },
  );
}

/// generated route for
/// [_i2.FavoriteScreen]
class FavoriteRoute extends _i6.PageRouteInfo<void> {
  const FavoriteRoute({List<_i6.PageRouteInfo>? children})
    : super(FavoriteRoute.name, initialChildren: children);

  static const String name = 'FavoriteRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.FavoriteScreen();
    },
  );
}

/// generated route for
/// [_i3.HistoryScreen]
class HistoryRoute extends _i6.PageRouteInfo<void> {
  const HistoryRoute({List<_i6.PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.HistoryScreen();
    },
  );
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomePage();
    },
  );
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfileScreen();
    },
  );
}
