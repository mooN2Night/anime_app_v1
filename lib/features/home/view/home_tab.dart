import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:new_anime_app/router/router.gr.dart';

@RoutePage()
class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        DiscoverRoute(),
        FavoriteRoute(),
        HistoryRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => _openPage(index, tabsRouter),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(IconlyLight.home),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyLight.heart),
                label: 'Избранное',
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyLight.timeCircle),
                label: 'История',
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyLight.profile),
                label: 'Профиль',
              ),
            ],
          ),
        );
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
