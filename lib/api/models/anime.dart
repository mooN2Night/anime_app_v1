import 'package:json_annotation/json_annotation.dart';

part 'anime.g.dart';

@JsonSerializable()
class AnimeDto {
  final int id;
  final AnimeType type;
  final int year;
  final AnimeName name;
  final String alias;
  final AnimeSeason season;
  final AnimePoster poster;
  @JsonKey(name: 'fresh_at')
  final String? freshAt;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'is_ongoing')
  final bool isOngoing;
  @JsonKey(name: 'age_rating')
  final AgeRating ageRating;
  @JsonKey(name: 'publish_day')
  final PublishDay publishDay;
  final String description;
  final String? notification;
  @JsonKey(name: 'episodes_total')
  final int episodesTotal;
  @JsonKey(name: 'external_player')
  final String? externalPlayer;
  @JsonKey(name: 'is_in_production')
  final bool isInProduction;
  @JsonKey(name: 'is_blocked_by_geo')
  final bool isBlockedByGeo;
  @JsonKey(name: 'is_blocked_by_copyrights')
  final bool isBlockedByCopyrights;
  @JsonKey(name: 'added_in_users_favorites')
  final int addedInUsersFavorites;
  @JsonKey(name: 'average_duration_of_episode')
  final int averageDurationOfEpisode;

  AnimeDto({
    required this.id,
    required this.type,
    required this.year,
    required this.name,
    required this.alias,
    required this.season,
    required this.poster,
    this.freshAt,
    this.createdAt,
    this.updatedAt,
    required this.isOngoing,
    required this.ageRating,
    required this.publishDay,
    required this.description,
    this.notification,
    required this.episodesTotal,
    this.externalPlayer,
    required this.isInProduction,
    required this.isBlockedByGeo,
    required this.isBlockedByCopyrights,
    required this.addedInUsersFavorites,
    required this.averageDurationOfEpisode,
  });

  factory AnimeDto.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoToJson(this);
}

@JsonSerializable()
class AnimeType {
  final String value;
  final String description;

  AnimeType({required this.value, required this.description});

  factory AnimeType.fromJson(Map<String, dynamic> json) =>
      _$AnimeTypeFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeTypeToJson(this);
}

@JsonSerializable()
class AnimeName {
  final String main;
  final String english;
  final String alternative;

  AnimeName({
    required this.main,
    required this.english,
    required this.alternative,
  });

  factory AnimeName.fromJson(Map<String, dynamic> json) =>
      _$AnimeNameFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeNameToJson(this);
}

@JsonSerializable()
class AnimeSeason {
  final String value;
  final String description;

  AnimeSeason({
    required this.value,
    required this.description,
  });

  factory AnimeSeason.fromJson(Map<String, dynamic> json) =>
      _$AnimeSeasonFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeSeasonToJson(this);
}

@JsonSerializable()
class AnimePoster {
  final String src;
  final String thumbnail;
  final OptimizedPoster optimized;

  AnimePoster({
    required this.src,
    required this.thumbnail,
    required this.optimized,
  });

  factory AnimePoster.fromJson(Map<String, dynamic> json) =>
      _$AnimePosterFromJson(json);

  Map<String, dynamic> toJson() => _$AnimePosterToJson(this);
}

@JsonSerializable()
class OptimizedPoster {
  final String src;
  final String thumbnail;

  OptimizedPoster({
    required this.src,
    required this.thumbnail,
  });

  factory OptimizedPoster.fromJson(Map<String, dynamic> json) =>
      _$OptimizedPosterFromJson(json);

  Map<String, dynamic> toJson() => _$OptimizedPosterToJson(this);
}

@JsonSerializable()
class AgeRating {
  final String value;
  final String label;
  @JsonKey(name: 'is_adult')
  final bool isAdult;
  final String description;

  AgeRating({
    required this.value,
    required this.label,
    required this.isAdult,
    required this.description,
  });

  factory AgeRating.fromJson(Map<String, dynamic> json) =>
      _$AgeRatingFromJson(json);

  Map<String, dynamic> toJson() => _$AgeRatingToJson(this);
}

@JsonSerializable()
class PublishDay {
  final int value;
  final String description;

  PublishDay({
    required this.value,
    required this.description,
  });

  factory PublishDay.fromJson(Map<String, dynamic> json) =>
      _$PublishDayFromJson(json);

  Map<String, dynamic> toJson() => _$PublishDayToJson(this);
}