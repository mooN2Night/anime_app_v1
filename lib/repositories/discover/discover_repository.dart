import 'package:new_anime_app/api/api.dart';
import 'package:new_anime_app/api/models/anime.dart';

import 'discover.dart';

class DiscoverRepository implements DiscoverRepositoryI {
  DiscoverRepository({required this.client});

  final RestClient client;

  @override
  Future<List<AnimeDto>> fetchRandomAnime() async {
    return await client.getRandomAnime();
  }

  @override
  Future<AnimeDtoData> fetchNewEpisodes() async {
    return await client.getNewEpisodes(17);
  }
}
