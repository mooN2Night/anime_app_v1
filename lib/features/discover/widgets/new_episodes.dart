import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:new_anime_app/ui/ui.dart';

import '../../../repositories/discover/discover.dart';
import '../../../router/router.gr.dart';

class NewEpisodes extends StatelessWidget {
  const NewEpisodes({super.key, required this.animeList});

  final List<Anime> animeList;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        const TextContainer(text: 'Новые эпизоды'),
        const SizedBox(height: 10),
        SizedBox(
          height: 255,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (context, index) {
              final anime = animeList[index];
              return GestureDetector(
                onTap: () => context.pushRoute(
                  DetailAnimeRoute(alias: anime.alias),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 210,
                      width: 145,
                      margin: EdgeInsets.only(right: index == 6 ? 0 : 8),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(anime.poster.optimized.fullSrc),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 145,
                      child: Text(
                        anime.name.main,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
