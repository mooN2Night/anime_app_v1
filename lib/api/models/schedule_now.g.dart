// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_now.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleNowDto _$ScheduleNowDtoFromJson(Map<String, dynamic> json) =>
    ScheduleNowDto(
      today: (json['today'] as List<dynamic>)
          .map((e) => ScheduleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      tomorrow: (json['tomorrow'] as List<dynamic>)
          .map((e) => ScheduleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      yesterday: (json['yesterday'] as List<dynamic>)
          .map((e) => ScheduleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScheduleNowDtoToJson(ScheduleNowDto instance) =>
    <String, dynamic>{
      'today': instance.today,
      'tomorrow': instance.tomorrow,
      'yesterday': instance.yesterday,
    };

ScheduleDto _$ScheduleDtoFromJson(Map<String, dynamic> json) => ScheduleDto(
      release: AnimeDto.fromJson(json['release'] as Map<String, dynamic>),
      isSeasonReleased: json['full_season_is_released'] as bool?,
      publishedReleaseEpisode: json['published_release_episode'] == null
          ? null
          : ReleaseEpisodeDto.fromJson(
              json['published_release_episode'] as Map<String, dynamic>),
      nextReleaseEpisodeNumber:
          (json['next_release_episode_number'] as num?)?.toInt(),
      newReleaseEpisode: json['new_release_episode'] == null
          ? null
          : ReleaseEpisodeDto.fromJson(
              json['new_release_episode'] as Map<String, dynamic>),
      newReleaseEpisodeOrdinal:
          (json['new_release_episode_ordinal'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ScheduleDtoToJson(ScheduleDto instance) =>
    <String, dynamic>{
      'release': instance.release,
      'full_season_is_released': instance.isSeasonReleased,
      'published_release_episode': instance.publishedReleaseEpisode,
      'next_release_episode_number': instance.nextReleaseEpisodeNumber,
      'new_release_episode': instance.newReleaseEpisode,
      'new_release_episode_ordinal': instance.newReleaseEpisodeOrdinal,
    };

ReleaseEpisodeDto _$ReleaseEpisodeDtoFromJson(Map<String, dynamic> json) =>
    ReleaseEpisodeDto(
      id: json['id'] as String,
      name: json['name'] as String?,
      preview: PreviewDto.fromJson(json['preview'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReleaseEpisodeDtoToJson(ReleaseEpisodeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'preview': instance.preview,
    };

PreviewDto _$PreviewDtoFromJson(Map<String, dynamic> json) => PreviewDto(
      src: json['src'] as String?,
    );

Map<String, dynamic> _$PreviewDtoToJson(PreviewDto instance) =>
    <String, dynamic>{
      'src': instance.src,
    };
