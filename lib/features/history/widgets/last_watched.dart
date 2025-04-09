import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:new_anime_app/features/history/history.dart';

const imageUrl =
    'https://static.kinoafisha.info/k/series_posters/480/upload/series/seasons/852854291744020530.jpg';

class LastWatchedListTile extends StatelessWidget {
  const LastWatchedListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.network(imageUrl),
      title: Text(
        'Название аниме',
        style: theme.textTheme.titleLarge,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: const Text('Просмотрено 2/12 серий'),
      trailing: const Icon(IconlyLight.arrowRight),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('1'),
            ),
          ),
        ),
      ),
    );
  }
}