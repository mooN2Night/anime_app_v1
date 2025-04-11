import 'package:flutter/material.dart';

import '../../../repositories/discover/discover.dart';

class RandomAnime extends StatelessWidget {
  const RandomAnime({super.key, required this.anime});

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          anime.poster.fullSrc,
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
                  Colors.black.withValues(alpha: 0.9),
                ],
              ),
            ),
          ),
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
                  Colors.black.withValues(alpha: 0.9),
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
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
              Text(
                anime.description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
