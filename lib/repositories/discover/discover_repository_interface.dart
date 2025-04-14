import '../../api/models/models.dart';

abstract interface class DiscoverRepositoryI {
  Future<List<AnimeDto>> fetchRandomAnime();
  Future<AnimeDtoData> fetchNewEpisodes(int animeCount);
  Future<ScheduleNowDto> fetchNowSchedule();
}