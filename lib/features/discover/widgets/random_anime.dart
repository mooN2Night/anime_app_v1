import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:new_anime_app/router/router.gr.dart';

import '../../../repositories/discover/discover.dart';

class RandomAnime extends StatelessWidget {
  const RandomAnime({super.key, required this.anime});

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => context.pushRoute(DetailAnimeRoute(alias: anime.alias)),
      child: Stack(
        children: [
          Image.network(
            anime.poster.optimized.fullSrc,
            fit: BoxFit.fill,
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.5),
                    Colors.black.withValues(alpha: 0.8),
                    Colors.black,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  anime.name.main,
                  style: theme.textTheme.headlineLarge,
                ),
                Text(
                  anime.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
