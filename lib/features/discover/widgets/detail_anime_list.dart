import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../repositories/discover/discover.dart';
import '../../../ui/ui.dart';

const horizontalPadding = 16.0;

class DetailAnimeList extends StatefulWidget {
  const DetailAnimeList({super.key, required this.anime});

  final Anime anime;

  @override
  State<DetailAnimeList> createState() => _DetailAnimeListState();
}

class _DetailAnimeListState extends State<DetailAnimeList> {
  bool _isLicked = false;
  int _selectedIndex = 0;

  final List<String> _tabs = [
    'Эпизоды',
    'Связанное',
    'Рекомендации',
    'Комментарии'
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final widthWithPadding = (screenWidth - (horizontalPadding * 2)) / 2;
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            widget.anime.poster.fullSrc,
            width: widthWithPadding,
          ),
        ),
        const SizedBox(height: 15),
        Text(widget.anime.name.main, style: theme.textTheme.headlineMedium),
        const SizedBox(height: 5),
        Text(widget.anime.name.english, style: theme.textTheme.labelMedium),
        if (widget.anime.name.alternative != null)
          Column(
            children: [
              const SizedBox(height: 5),
              Text(widget.anime.name.alternative!),
            ],
          ),
        const SizedBox(height: 15),
        Row(
          children: [
            DetailRoundedContainer(
              text: widget.anime.ageRating.label,
              borderColor: Colors.grey,
            ),
            const SizedBox(width: 15),
            widget.anime.isOngoing
                ? DetailRoundedContainer(
                    text: widget.anime.publishDay.description,
                    borderColor: Colors.green,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: Colors.green,
                    ),
                  )
                : DetailRoundedContainer(
                    text: 'Завершен',
                    borderColor: Colors.blueAccent,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: Colors.blueAccent,
                    ),
                  ),
          ],
        ),
        const SizedBox(height: 15),
        DetailAnimeInfo('Тип:', widget.anime.type.description),
        const SizedBox(height: 5),
        DetailAnimeInfo('Сезон:', widget.anime.season.description),
        const SizedBox(height: 5),
        if (widget.anime.genres != null)
          Column(
            children: [
              DetailAnimeInfo(
                'Жанры:',
                widget.anime.genres!.map((genre) => genre.name).join(', '),
              ),
              const SizedBox(height: 5),
            ],
          ),
        DetailAnimeInfo('Год выхода:', widget.anime.year.toString()),
        const SizedBox(height: 5),
        if (widget.anime.averageDurationOfEpisode != null)
          Column(
            children: [
              DetailAnimeInfo(
                'Длительность:',
                '~${widget.anime.averageDurationOfEpisode} мин',
              ),
              const SizedBox(height: 5),
            ],
          ),
        if (widget.anime.episodesTotal != null)
          DetailAnimeInfo(
              'Всего эпизодов:', widget.anime.episodesTotal.toString()),
        const SizedBox(height: 15),
        Row(
          children: [
            DetailRoundedContainer(
              text: 'Смотреть с 1 эпизода',
              containerColor: Colors.grey.withValues(alpha: 0.7),
              icon: Icons.play_arrow_rounded,
              horizontalPadding: 8,
              verticalPadding: 8,
            ),
            const SizedBox(width: 8),
            DetailRoundedContainer(
              containerColor: _isLicked
                  ? const Color(0xFFFE3635)
                  : Colors.grey.withValues(alpha: 0.7),
              icon: IconlyBold.heart,
              horizontalPadding: 8,
              verticalPadding: 8,
              onTap: () => _isLikePressed(),
            ),
            const SizedBox(width: 8),
            DetailRoundedContainer(
              containerColor: Colors.grey.withValues(alpha: 0.7),
              icon: IconlyLight.document,
              horizontalPadding: 8,
              verticalPadding: 8,
              onTap: () => _openIdsDialog(context),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Text(widget.anime.description, style: theme.textTheme.labelMedium),
        const SizedBox(height: 15),
        _horizontalTabScroll(theme),
        const SizedBox(height: 15),
        _tabContent(_selectedIndex, screenWidth),
      ],
    );
  }

  SizedBox _horizontalTabScroll(ThemeData theme) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _tabs.length,
        separatorBuilder: (_, __) => const SizedBox(width: 20),
        itemBuilder: (context, index) {
          final isSelected = _selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() => _selectedIndex = index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: ShapeDecoration(
                shape: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: isSelected ? Colors.black : Colors.grey,
                    width: isSelected ? 3 : 1,
                  ),
                ),
              ),
              child: Center(
                child: AnimatedOpacity(
                  opacity: isSelected ? 1 : 0.5,
                  duration: const Duration(milliseconds: 200),
                  child: Text(
                    _tabs[index],
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: isSelected ? Colors.black : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _tabContent(int index, double screenWidth) {
    switch (index) {
      case 0:
        return Container(
          width: screenWidth,
          height: 300,
          color: Colors.lightGreen.shade100,
          child: const Center(child: Text('Тут будут Эпизоды')),
        );
      case 1:
        return Container(
          width: screenWidth,
          height: 300,
          color: Colors.deepPurple.shade100,
          child: const Center(child: Text('Тут будет Связанное')),
        );
      case 2:
        return Container(
          width: screenWidth,
          height: 300,
          color: Colors.orange.shade100,
          child: const Center(child: Text('Тут будут Рекомендации')),
        );
      case 3:
        return Container(
          width: screenWidth,
          height: 300,
          color: Colors.red.shade100,
          child: const Center(child: Text('Тут будут Комментарии')),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  void _isLikePressed() {
    setState(() {
      _isLicked = !_isLicked;
    });
  }

  void _openIdsDialog(BuildContext context) {
    const dialog = IdsDialog();
    showDialog(context: context, builder: (context) => dialog);
  }
}
