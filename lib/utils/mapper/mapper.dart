import '../../api/models/models.dart';
import '../../repositories/discover/discover.dart';

class AnimeMapper {
  static Anime fromAnimeDto(AnimeDto dto) {
    return Anime(
      id: dto.id,
      type: AnimeInfo(
        value: dto.type.value ?? '',
        description: dto.type.description ?? '',
      ),
      year: dto.year,
      name: AnimeName(
        main: dto.name.main,
        english: dto.name.english,
        alternative: dto.name.alternative,
      ),
      alias: dto.alias,
      season: AnimeInfo(
        value: dto.season.value,
        description: dto.season.description,
      ),
      poster: Poster(
        src: dto.poster.src,
        thumbnail: dto.poster.thumbnail,
        optimized: OptimizedPoster(
          src: dto.poster.optimized.src,
          thumbnail: dto.poster.optimized.thumbnail,
        ),
      ),
      freshAt: dto.freshAt,
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
      isOngoing: dto.isOngoing,
      ageRating: AgeRating(
        value: dto.ageRating.value,
        label: dto.ageRating.label,
        isAdult: dto.ageRating.isAdult,
        description: dto.ageRating.description,
      ),
      publishDay: AnimeInfo(
        value: dto.publishDay.value.toString(),
        description: dto.publishDay.description,
      ),
      description: dto.description ?? '',
      notification: dto.notification,
      episodesTotal: dto.episodesTotal,
      externalPlayer: dto.externalPlayer,
      isInProduction: dto.isInProduction,
      isBlockedByGeo: dto.isBlockedByGeo,
      isBlockedByCopyrights: dto.isBlockedByCopyrights,
      addedInUsersFavorites: dto.addedInUsersFavorites,
      averageDurationOfEpisode: dto.averageDurationOfEpisode,
    );
  }

  static ScheduleNow fromScheduleNowDto(ScheduleNowDto dto) {
    return ScheduleNow(
      today: dto.today.map((todayDto) => fromScheduleDto(todayDto)).toList(),
      tomorrow: dto.tomorrow
          .map((tomorrowDto) => fromScheduleDto(tomorrowDto))
          .toList(),
      yesterday: dto.yesterday
          .map((yesterdayDto) => fromScheduleDto(yesterdayDto))
          .toList(),
    );
  }

  static Schedule fromScheduleDto(ScheduleDto dto) {
    return Schedule(
      anime: fromAnimeDto(dto.release),
      isSeasonReleased: dto.isSeasonReleased,
      publishedReleaseEpisode: dto.publishedReleaseEpisode != null
          ? fromReleaseEpisodeDto(dto.publishedReleaseEpisode!)
          : null,
      nextReleaseEpisodeNumber: dto.nextReleaseEpisodeNumber,
      newReleaseEpisode: dto.newReleaseEpisode != null
          ? fromReleaseEpisodeDto(dto.newReleaseEpisode!)
          : null,
      newReleaseEpisodeOrdinal: dto.newReleaseEpisodeOrdinal,
    );
  }

  static ReleaseEpisode fromReleaseEpisodeDto(ReleaseEpisodeDto dto) {
    return ReleaseEpisode(
      id: dto.id,
      name: dto.name,
      preview: fromPreviewDto(dto.preview),
    );
  }

  static Preview fromPreviewDto(PreviewDto dto) {
    return Preview(src: dto.src);
  }
}
