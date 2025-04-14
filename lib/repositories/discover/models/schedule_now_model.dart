import '../discover.dart';

class ScheduleNow {
  final List<Schedule> today;
  final List<Schedule> tomorrow;
  final List<Schedule> yesterday;

  ScheduleNow({
    required this.today,
    required this.tomorrow,
    required this.yesterday,
  });
}

class Schedule {
  final Anime anime;
  final bool? isSeasonReleased;
  final ReleaseEpisode? publishedReleaseEpisode;
  final int? nextReleaseEpisodeNumber;
  final ReleaseEpisode? newReleaseEpisode;
  final int? newReleaseEpisodeOrdinal;

  Schedule({
    required this.anime,
    required this.isSeasonReleased,
    required this.publishedReleaseEpisode,
    required this.nextReleaseEpisodeNumber,
    required this.newReleaseEpisode,
    required this.newReleaseEpisodeOrdinal,
  });

  @override
  String toString() {
    return 'anime: $anime';
  }
}

class ReleaseEpisode {
  final String id;
  final String? name;
  final Preview preview;

  ReleaseEpisode({
    required this.id,
    required this.name,
    required this.preview,
  });
}

class Preview {
  final String src;

  String get fullSrc => 'https://anilibria.top$src';

  Preview({required this.src});

}