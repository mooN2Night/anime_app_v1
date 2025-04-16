import 'package:flutter/material.dart';

const imageUrl =
    'https://static.kinoafisha.info/k/series_posters/480/upload/series/seasons/852854291744020530.jpg';

const animeName =
    'Название аниме, которое может быть достаточно длинным, чтобы уместиться на карточке';

const horizontalPadding = 16.0;

class AnimeContainer extends StatelessWidget {
  const AnimeContainer({
    super.key,
    this.description,
    this.info,
    this.openAnime,
  });

  final String? description;
  final String? info;
  final VoidCallback? openAnime;

  double get imageWidthFactor => 0.45;

  double get imageHeightFactor => 0.28;

  @override
  Widget build(BuildContext context) {
    final imageSize = _calculateImageSize(context);
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text('2'),
            ),
          ),
        ),
      ),
      behavior: HitTestBehavior.opaque,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _animeImage(imageSize),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(right: 8),
              height: imageSize.height,
              child: _animeInfo(theme),
            ),
          ),
        ],
      ),
    );
  }

  Column _animeInfo(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          animeName,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.titleLarge,
        ),
        if (description != null)
          Column(
            children: [
              const SizedBox(height: 5),
              Text(
                description!,
                style: theme.textTheme.labelMedium,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        const SizedBox(height: 5),
        if (info != null)
          Column(
            children: [
              Text(info!),
              const SizedBox(height: 5),
            ],
          ),
        if (openAnime != null)
          GestureDetector(
            onTap: openAnime,
            behavior: HitTestBehavior.opaque,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(width: 1, color: Colors.indigo),
                ),
              ),
              child: const Text(
                'Продолжить просмотр',
                style: TextStyle(color: Colors.indigo),
              ),
            ),
          ),
      ],
    );
  }

  Container _animeImage(Size imageSize) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
      width: imageSize.width,
      height: imageSize.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }

  Size _calculateImageSize(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final availableWidth = screenSize.width - horizontalPadding * 2;
    final imageWidth = availableWidth * imageWidthFactor;
    final imageHeight = screenSize.height * imageHeightFactor;
    return Size(imageWidth, imageHeight);
  }
}
