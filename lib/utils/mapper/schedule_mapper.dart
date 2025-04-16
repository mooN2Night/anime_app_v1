import 'package:new_anime_app/utils/mapper/mapper.dart';

import '../../api/models/models.dart';
import '../../repositories/discover/discover.dart';

class ScheduleMapper {
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
      anime: AnimeMapper.fromAnimeDto(dto.release),
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