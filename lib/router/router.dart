import 'package:auto_route/auto_route.dart';
import 'package:new_anime_app/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeTab.page,
          initial: true,
          path: '/',
          children: [
            AutoRoute(
              page: DiscoverRoute.page,
              path: 'discover',
            ),
            AutoRoute(
              page: FavoriteRoute.page,
              path: 'favorite',
            ),
            AutoRoute(
              page: HistoryRoute.page,
              path: 'history',
            ),
            AutoRoute(
              page: ProfileRoute.page,
              path: 'profile',
            ),
          ],
        ),
        AutoRoute(
          page: DetailAnimeRoute.page,
          path: '/anime/:anime',
        ),
      ];
}
