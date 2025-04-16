import '../../api/models/models.dart';

abstract interface class DiscoverRepositoryI {
  Future<List<AnimeDto>> fetchRandomAnime();
  Future<AnimeDtoData> fetchNewEpisodes(int animeCount);
  Future<ScheduleNowDto> fetchNowSchedule();
  Future<List<GenresDto>> fetchGenres();
  Future<AnimeDto> fetchDetailAnime(String alias);
}