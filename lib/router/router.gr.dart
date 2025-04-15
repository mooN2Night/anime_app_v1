// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:new_anime_app/features/discover/view/discover_screen.dart'
    as _i2;
import 'package:new_anime_app/features/discover/view/page/detail_anime_page.dart'
    as _i1;
import 'package:new_anime_app/features/favorite/view/favorite_screen.dart'
    as _i3;
import 'package:new_anime_app/features/history/view/history_screen.dart' as _i4;
import 'package:new_anime_app/features/home/view/home_page.dart' as _i5;
import 'package:new_anime_app/features/profile/view/profile_screen.dart' as _i6;
import 'package:new_anime_app/repositories/discover/discover.dart' as _i9;

/// generated route for
/// [_i1.DetailAnimePage]
class DetailAnimeRoute extends _i7.PageRouteInfo<DetailAnimeRouteArgs> {
  DetailAnimeRoute({
    _i8.Key? key,
    required _i9.Anime anime,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         DetailAnimeRoute.name,
         args: DetailAnimeRouteArgs(key: key, anime: anime),
         initialChildren: children,
       );

  static const String name = 'DetailAnimeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailAnimeRouteArgs>();
      return _i1.DetailAnimePage(key: args.key, anime: args.anime);
    },
  );
}

class DetailAnimeRouteArgs {
  const DetailAnimeRouteArgs({this.key, required this.anime});

  final _i8.Key? key;

  final _i9.Anime anime;

  @override
  String toString() {
    return 'DetailAnimeRouteArgs{key: $key, anime: $anime}';
  }
}

/// generated route for
/// [_i2.DiscoverScreen]
class DiscoverRoute extends _i7.PageRouteInfo<void> {
  const DiscoverRoute({List<_i7.PageRouteInfo>? children})
    : super(DiscoverRoute.name, initialChildren: children);

  static const String name = 'DiscoverRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.DiscoverScreen();
    },
  );
}

/// generated route for
/// [_i3.FavoriteScreen]
class FavoriteRoute extends _i7.PageRouteInfo<void> {
  const FavoriteRoute({List<_i7.PageRouteInfo>? children})
    : super(FavoriteRoute.name, initialChildren: children);

  static const String name = 'FavoriteRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.FavoriteScreen();
    },
  );
}

/// generated route for
/// [_i4.HistoryScreen]
class HistoryRoute extends _i7.PageRouteInfo<void> {
  const HistoryRoute({List<_i7.PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.HistoryScreen();
    },
  );
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomePage();
    },
  );
}

/// generated route for
/// [_i6.ProfileScreen]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfileScreen();
    },
  );
}
