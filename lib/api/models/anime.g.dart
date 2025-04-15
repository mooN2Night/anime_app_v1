// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeDtoData _$AnimeDtoDataFromJson(Map<String, dynamic> json) => AnimeDtoData(
      data: (json['data'] as List<dynamic>)
          .map((e) => AnimeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeDtoDataToJson(AnimeDtoData instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

AnimeDto _$AnimeDtoFromJson(Map<String, dynamic> json) => AnimeDto(
      id: (json['id'] as num).toInt(),
      type: AnimeDtoType.fromJson(json['type'] as Map<String, dynamic>),
      year: (json['year'] as num).toInt(),
      name: AnimeDtoName.fromJson(json['name'] as Map<String, dynamic>),
      alias: json['alias'] as String,
      season: AnimeDtoSeason.fromJson(json['season'] as Map<String, dynamic>),
      poster: AnimeDtoPoster.fromJson(json['poster'] as Map<String, dynamic>),
      freshAt: json['fresh_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      isOngoing: json['is_ongoing'] as bool,
      ageRating: AnimeDtoAgeRating.fromJson(
          json['age_rating'] as Map<String, dynamic>),
      publishDay: AnimeDtoPublishDay.fromJson(
          json['publish_day'] as Map<String, dynamic>),
      description: json['description'] as String?,
      notification: json['notification'] as String?,
      episodesTotal: (json['episodes_total'] as num?)?.toInt(),
      externalPlayer: json['external_player'] as String?,
      isInProduction: json['is_in_production'] as bool,
      isBlockedByGeo: json['is_blocked_by_geo'] as bool,
      isBlockedByCopyrights: json['is_blocked_by_copyrights'] as bool,
      addedInUsersFavorites: (json['added_in_users_favorites'] as num).toInt(),
      averageDurationOfEpisode:
          (json['average_duration_of_episode'] as num?)?.toInt(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => AnimeDtoGenres.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'genres': instance.genres,
    };

AnimeDtoType _$AnimeDtoTypeFromJson(Map<String, dynamic> json) => AnimeDtoType(
      value: json['value'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$AnimeDtoTypeToJson(AnimeDtoType instance) =>
    <String, dynamic>{
      'value': instance.value,
      'description': instance.description,
    };

AnimeDtoName _$AnimeDtoNameFromJson(Map<String, dynamic> json) => AnimeDtoName(
      main: json['main'] as String,
      english: json['english'] as String,
      alternative: json['alternative'] as String?,
    );

Map<String, dynamic> _$AnimeDtoNameToJson(AnimeDtoName instance) =>
    <String, dynamic>{
      'main': instance.main,
      'english': instance.english,
      'alternative': instance.alternative,
    };

AnimeDtoSeason _$AnimeDtoSeasonFromJson(Map<String, dynamic> json) =>
    AnimeDtoSeason(
      value: json['value'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$AnimeDtoSeasonToJson(AnimeDtoSeason instance) =>
    <String, dynamic>{
      'value': instance.value,
      'description': instance.description,
    };

AnimeDtoPoster _$AnimeDtoPosterFromJson(Map<String, dynamic> json) =>
    AnimeDtoPoster(
      src: json['src'] as String,
      thumbnail: json['thumbnail'] as String,
      optimized: AnimeDtoOptimizedPoster.fromJson(
          json['optimized'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeDtoPosterToJson(AnimeDtoPoster instance) =>
    <String, dynamic>{
      'src': instance.src,
      'thumbnail': instance.thumbnail,
      'optimized': instance.optimized,
    };

AnimeDtoOptimizedPoster _$AnimeDtoOptimizedPosterFromJson(
        Map<String, dynamic> json) =>
    AnimeDtoOptimizedPoster(
      src: json['src'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$AnimeDtoOptimizedPosterToJson(
        AnimeDtoOptimizedPoster instance) =>
    <String, dynamic>{
      'src': instance.src,
      'thumbnail': instance.thumbnail,
    };

AnimeDtoAgeRating _$AnimeDtoAgeRatingFromJson(Map<String, dynamic> json) =>
    AnimeDtoAgeRating(
      value: json['value'] as String,
      label: json['label'] as String,
      isAdult: json['is_adult'] as bool,
      description: json['description'] as String,
    );

Map<String, dynamic> _$AnimeDtoAgeRatingToJson(AnimeDtoAgeRating instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'is_adult': instance.isAdult,
      'description': instance.description,
    };

AnimeDtoPublishDay _$AnimeDtoPublishDayFromJson(Map<String, dynamic> json) =>
    AnimeDtoPublishDay(
      value: (json['value'] as num).toInt(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$AnimeDtoPublishDayToJson(AnimeDtoPublishDay instance) =>
    <String, dynamic>{
      'value': instance.value,
      'description': instance.description,
    };

AnimeDtoGenres _$AnimeDtoGenresFromJson(Map<String, dynamic> json) =>
    AnimeDtoGenres(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image:
          AnimeDtoGenresImage.fromJson(json['image'] as Map<String, dynamic>),
      totalReleases: (json['total_releases'] as num).toInt(),
    );

Map<String, dynamic> _$AnimeDtoGenresToJson(AnimeDtoGenres instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'total_releases': instance.totalReleases,
    };

AnimeDtoGenresImage _$AnimeDtoGenresImageFromJson(Map<String, dynamic> json) =>
    AnimeDtoGenresImage(
      preview: json['preview'] as String,
      thumbnail: json['thumbnail'] as String,
      optimized: AnimeDtoGenresOptimizedImage.fromJson(
          json['optimized'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeDtoGenresImageToJson(
        AnimeDtoGenresImage instance) =>
    <String, dynamic>{
      'preview': instance.preview,
      'thumbnail': instance.thumbnail,
      'optimized': instance.optimized,
    };

AnimeDtoGenresOptimizedImage _$AnimeDtoGenresOptimizedImageFromJson(
        Map<String, dynamic> json) =>
    AnimeDtoGenresOptimizedImage(
      preview: json['preview'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$AnimeDtoGenresOptimizedImageToJson(
        AnimeDtoGenresOptimizedImage instance) =>
    <String, dynamic>{
      'preview': instance.preview,
      'thumbnail': instance.thumbnail,
    };
