import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'schedule_now.g.dart';

@JsonSerializable()
class ScheduleNowDto {
  final List<ScheduleDto> today;
  final List<ScheduleDto> tomorrow;
  final List<ScheduleDto> yesterday;

  ScheduleNowDto({
    required this.today,
    required this.tomorrow,
    required this.yesterday,
  });

  factory ScheduleNowDto.fromJson(Map<String, dynamic> json) =>
      _$ScheduleNowDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleNowDtoToJson(this);

  @override
  String toString() {
    return 'today: $today\ntomorrow: $tomorrow\nyesterday: $yesterday';
  }
}

@JsonSerializable()
class ScheduleDto {
  final AnimeDto release;
  @JsonKey(name: 'full_season_is_released')
  final bool? isSeasonReleased;
  @JsonKey(name: 'published_release_episode')
  final ReleaseEpisodeDto? publishedReleaseEpisode;
  @JsonKey(name: 'next_release_episode_number')
  final int? nextReleaseEpisodeNumber;
  @JsonKey(name: 'new_release_episode')
  final ReleaseEpisodeDto? newReleaseEpisode;
  @JsonKey(name: 'new_release_episode_ordinal')
  final int? newReleaseEpisodeOrdinal;

  ScheduleDto({
    required this.release,
    required this.isSeasonReleased,
    required this.publishedReleaseEpisode,
    required this.nextReleaseEpisodeNumber,
    required this.newReleaseEpisode,
    required this.newReleaseEpisodeOrdinal,
  });

  factory ScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleDtoToJson(this);

  @override
  String toString() {
    return 'nextEpisodeNumber: $nextReleaseEpisodeNumber';
  }
}

@JsonSerializable()
class ReleaseEpisodeDto {
  final String id;
  final String? name;
  final PreviewDto preview;

  ReleaseEpisodeDto({
    required this.id,
    required this.name,
    required this.preview,
  });

  factory ReleaseEpisodeDto.fromJson(Map<String, dynamic> json) =>
      _$ReleaseEpisodeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReleaseEpisodeDtoToJson(this);

  @override
  String toString() {
    return 'id: $id, name: $name, preview: $preview';
  }
}

@JsonSerializable()
class PreviewDto {
  final String src;

  PreviewDto({required this.src});

  factory PreviewDto.fromJson(Map<String, dynamic> json) =>
      _$PreviewDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewDtoToJson(this);

  @override
  String toString() {
    return 'src: $src';
  }
}
