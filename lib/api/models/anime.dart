import 'package:json_annotation/json_annotation.dart';

part 'anime.g.dart';

@JsonSerializable()
class AnimeDtoData {
  final List<AnimeDto> data;

  AnimeDtoData({required this.data});

  factory AnimeDtoData.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoDataFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoDataToJson(this);

  @override
  String toString() {
    return '$data';
  }
}

@JsonSerializable()
class AnimeDto {
  final int id;
  final AnimeDtoType type;
  final int year;
  final AnimeDtoName name;
  final String alias;
  final AnimeDtoSeason season;
  final AnimeDtoPoster poster;
  @JsonKey(name: 'fresh_at')
  final String? freshAt;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'is_ongoing')
  final bool isOngoing;
  @JsonKey(name: 'age_rating')
  final AnimeDtoAgeRating ageRating;
  @JsonKey(name: 'publish_day')
  final AnimeDtoPublishDay publishDay;
  final String? description;
  final String? notification;
  @JsonKey(name: 'episodes_total')
  final int? episodesTotal;
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
  final int? averageDurationOfEpisode;
  final List<AnimeDtoGenres>? genres;

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
    this.genres,
  });

  factory AnimeDto.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoToJson(this);

  @override
  String toString() {
    return '$year, $name';
  }
}

@JsonSerializable()
class AnimeDtoType {
  final String? value;
  final String? description;

  AnimeDtoType({required this.value, required this.description});

  factory AnimeDtoType.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoTypeFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoTypeToJson(this);

  @override
  String toString() {
    return '$description';
  }
}

@JsonSerializable()
class AnimeDtoName {
  final String main;
  final String english;
  final String? alternative;

  AnimeDtoName({
    required this.main,
    required this.english,
    required this.alternative,
  });

  factory AnimeDtoName.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoNameFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoNameToJson(this);

  @override
  String toString() {
    return '$main, $english, $alternative';
  }
}

@JsonSerializable()
class AnimeDtoSeason {
  final String value;
  final String description;

  AnimeDtoSeason({
    required this.value,
    required this.description,
  });

  factory AnimeDtoSeason.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoSeasonFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoSeasonToJson(this);

  @override
  String toString() {
    return value;
  }
}

@JsonSerializable()
class AnimeDtoPoster {
  final String src;
  final String thumbnail;
  final AnimeDtoOptimizedPoster optimized;

  AnimeDtoPoster({
    required this.src,
    required this.thumbnail,
    required this.optimized,
  });

  factory AnimeDtoPoster.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoPosterFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoPosterToJson(this);

  @override
  String toString() {
    return src;
  }
}

@JsonSerializable()
class AnimeDtoOptimizedPoster {
  final String src;
  final String thumbnail;

  AnimeDtoOptimizedPoster({
    required this.src,
    required this.thumbnail,
  });

  factory AnimeDtoOptimizedPoster.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoOptimizedPosterFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoOptimizedPosterToJson(this);

  @override
  String toString() {
    return src;
  }
}

@JsonSerializable()
class AnimeDtoAgeRating {
  final String value;
  final String label;
  @JsonKey(name: 'is_adult')
  final bool isAdult;
  final String description;

  AnimeDtoAgeRating({
    required this.value,
    required this.label,
    required this.isAdult,
    required this.description,
  });

  factory AnimeDtoAgeRating.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoAgeRatingFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoAgeRatingToJson(this);

  @override
  String toString() {
    return description;
  }
}

@JsonSerializable()
class AnimeDtoPublishDay {
  final int value;
  final String description;

  AnimeDtoPublishDay({
    required this.value,
    required this.description,
  });

  factory AnimeDtoPublishDay.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoPublishDayFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoPublishDayToJson(this);

  @override
  String toString() {
    return description;
  }
}

@JsonSerializable()
class AnimeDtoGenres {
  final int id;
  final String name;
  final AnimeDtoGenresImage image;
  @JsonKey(name: 'total_releases')
  final int totalReleases;

  AnimeDtoGenres({
    required this.id,
    required this.name,
    required this.image,
    required this.totalReleases,
  });

  factory AnimeDtoGenres.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoGenresFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoGenresToJson(this);

  @override
  String toString() {
    return name;
  }
}

@JsonSerializable()
class AnimeDtoGenresImage {
  final String preview;
  final String thumbnail;
  final AnimeDtoGenresOptimizedImage optimized;

  AnimeDtoGenresImage({
    required this.preview,
    required this.thumbnail,
    required this.optimized,
  });

  factory AnimeDtoGenresImage.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoGenresImageFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoGenresImageToJson(this);

  @override
  String toString() {
    return '$preview, $optimized';
  }
}

@JsonSerializable()
class AnimeDtoGenresOptimizedImage {
  final String preview;
  final String thumbnail;

  AnimeDtoGenresOptimizedImage({
    required this.preview,
    required this.thumbnail,
  });


  factory AnimeDtoGenresOptimizedImage.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoGenresOptimizedImageFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDtoGenresOptimizedImageToJson(this);

  @override
  String toString() {
    return preview;
  }
}
