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
import 'package:new_anime_app/features/discover/view/detail_anime_screen.dart'
    as _i1;
import 'package:new_anime_app/features/discover/view/discover_page.dart' as _i2;
import 'package:new_anime_app/features/favorite/view/favorite_page.dart' as _i3;
import 'package:new_anime_app/features/history/view/history_page.dart' as _i4;
import 'package:new_anime_app/features/home/view/home_tab.dart' as _i5;
import 'package:new_anime_app/features/profile/view/profile_page.dart' as _i6;

/// generated route for
/// [_i1.DetailAnimePage]
class DetailAnimeRoute extends _i7.PageRouteInfo<DetailAnimeRouteArgs> {
  DetailAnimeRoute({
    _i8.Key? key,
    required String alias,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         DetailAnimeRoute.name,
         args: DetailAnimeRouteArgs(key: key, alias: alias),
         initialChildren: children,
       );

  static const String name = 'DetailAnimeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailAnimeRouteArgs>();
      return _i1.DetailAnimePage(key: args.key, alias: args.alias);
    },
  );
}

class DetailAnimeRouteArgs {
  const DetailAnimeRouteArgs({this.key, required this.alias});

  final _i8.Key? key;

  final String alias;

  @override
  String toString() {
    return 'DetailAnimeRouteArgs{key: $key, alias: $alias}';
  }
}

/// generated route for
/// [_i2.DiscoverPage]
class DiscoverRoute extends _i7.PageRouteInfo<void> {
  const DiscoverRoute({List<_i7.PageRouteInfo>? children})
    : super(DiscoverRoute.name, initialChildren: children);

  static const String name = 'DiscoverRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.DiscoverPage();
    },
  );
}

/// generated route for
/// [_i3.FavoritePage]
class FavoriteRoute extends _i7.PageRouteInfo<void> {
  const FavoriteRoute({List<_i7.PageRouteInfo>? children})
    : super(FavoriteRoute.name, initialChildren: children);

  static const String name = 'FavoriteRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.FavoritePage();
    },
  );
}

/// generated route for
/// [_i4.HistoryPage]
class HistoryRoute extends _i7.PageRouteInfo<void> {
  const HistoryRoute({List<_i7.PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.HistoryPage();
    },
  );
}

/// generated route for
/// [_i5.HomeTab]
class HomeTab extends _i7.PageRouteInfo<void> {
  const HomeTab({List<_i7.PageRouteInfo>? children})
    : super(HomeTab.name, initialChildren: children);

  static const String name = 'HomeTab';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeTab();
    },
  );
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfilePage();
    },
  );
}
