import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../repositories/discover/discover.dart';

class NewEpisodes extends StatelessWidget {
  const NewEpisodes({super.key, required this.animeList});

  final List<Anime> animeList;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Новые эпизоды', style: theme.textTheme.headlineMedium),
              const Icon(IconlyLight.arrowRight2),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 255,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: animeList.length,
            itemBuilder: (context, index) {
              final anime = animeList[index];
              return Column(
                children: [
                  Container(
                    height: 210,
                    width: 145,
                    margin: EdgeInsets.only(right: index == 19 ? 0 : 8),
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
              );
            },
          ),
        ),
      ],
    );
  }
}
