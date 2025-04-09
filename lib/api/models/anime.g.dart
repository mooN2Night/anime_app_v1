// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeDto _$AnimeDtoFromJson(Map<String, dynamic> json) => AnimeDto(
      id: (json['id'] as num).toInt(),
      type: AnimeType.fromJson(json['type'] as Map<String, dynamic>),
      year: (json['year'] as num).toInt(),
      name: AnimeName.fromJson(json['name'] as Map<String, dynamic>),
      alias: json['alias'] as String,
      season: AnimeSeason.fromJson(json['season'] as Map<String, dynamic>),
      poster: AnimePoster.fromJson(json['poster'] as Map<String, dynamic>),
      freshAt: json['fresh_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      isOngoing: json['is_ongoing'] as bool,
      ageRating: AgeRating.fromJson(json['age_rating'] as Map<String, dynamic>),
      publishDay:
          PublishDay.fromJson(json['publish_day'] as Map<String, dynamic>),
      description: json['description'] as String,
      notification: json['notification'] as String?,
      episodesTotal: (json['episodes_total'] as num).toInt(),
      externalPlayer: json['external_player'] as String?,
      isInProduction: json['is_in_production'] as bool,
      isBlockedByGeo: json['is_blocked_by_geo'] as bool,
      isBlockedByCopyrights: json['is_blocked_by_copyrights'] as bool,
      addedInUsersFavorites: (json['added_in_users_favorites'] as num).toInt(),
      averageDurationOfEpisode:
          (json['average_duration_of_episode'] as num).toInt(),
    );

Map<String, dynamic> _$AnimeDtoToJson(AnimeDto instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'year': instance.year,
      'name': instance.name,
      'alias': instance.alias,
      'season': instance.season,
      'poster': instance.poster,
      'fresh_at': instance.freshAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'is_ongoing': instance.isOngoing,
      'age_rating': instance.ageRating,
      'publish_day': instance.publishDay,
      'description': instance.description,
      'notification': instance.notification,
      'episodes_total': instance.episodesTotal,
      'external_player': instance.externalPlayer,
      'is_in_production': instance.isInProduction,
      'is_blocked_by_geo': instance.isBlockedByGeo,
      'is_blocked_by_copyrights': instance.isBlockedByCopyrights,
      'added_in_users_favorites': instance.addedInUsersFavorites,
      'average_duration_of_episode': instance.averageDurationOfEpisode,
    };

AnimeType _$AnimeTypeFromJson(Map<String, dynamic> json) => AnimeType(
      value: json['value'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$AnimeTypeToJson(AnimeType instance) => <String, dynamic>{
      'value': instance.value,
      'description': instance.description,
    };

AnimeName _$AnimeNameFromJson(Map<String, dynamic> json) => AnimeName(
      main: json['main'] as String,
      english: json['english'] as String,
      alternative: json['alternative'] as String,
    );

Map<String, dynamic> _$AnimeNameToJson(AnimeName instance) => <String, dynamic>{
      'main': instance.main,
      'english': instance.english,
      'alternative': instance.alternative,
    };

AnimeSeason _$AnimeSeasonFromJson(Map<String, dynamic> json) => AnimeSeason(
      value: json['value'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$AnimeSeasonToJson(AnimeSeason instance) =>
    <String, dynamic>{
      'value': instance.value,
      'description': instance.description,
    };

AnimePoster _$AnimePosterFromJson(Map<String, dynamic> json) => AnimePoster(
      src: json['src'] as String,
      thumbnail: json['thumbnail'] as String,
      optimized:
          OptimizedPoster.fromJson(json['optimized'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimePosterToJson(AnimePoster instance) =>
    <String, dynamic>{
      'src': instance.src,
      'thumbnail': instance.thumbnail,
      'optimized': instance.optimized,
    };

OptimizedPoster _$OptimizedPosterFromJson(Map<String, dynamic> json) =>
    OptimizedPoster(
      src: json['src'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$OptimizedPosterToJson(OptimizedPoster instance) =>
    <String, dynamic>{
      'src': instance.src,
      'thumbnail': instance.thumbnail,
    };

AgeRating _$AgeRatingFromJson(Map<String, dynamic> json) => AgeRating(
      value: json['value'] as String,
      label: json['label'] as String,
      isAdult: json['is_adult'] as bool,
      description: json['description'] as String,
    );

Map<String, dynamic> _$AgeRatingToJson(AgeRating instance) => <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'is_adult': instance.isAdult,
      'description': instance.description,
    };

PublishDay _$PublishDayFromJson(Map<String, dynamic> json) => PublishDay(
      value: (json['value'] as num).toInt(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$PublishDayToJson(PublishDay instance) =>
    <String, dynamic>{
      'value': instance.value,
      'description': instance.description,
    };
