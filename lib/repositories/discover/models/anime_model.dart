class AnimeData {
  final List<Anime> anime;

  AnimeData({required this.anime});
}

class Anime {
  final int id;
  final AnimeInfo type;
  final int year;
  final AnimeName name;
  final String alias;
  final AnimeInfo season;
  final Poster poster;
  final String? freshAt;
  final String? createdAt;
  final String? updatedAt;
  final bool isOngoing;
  final AgeRating ageRating;
  final AnimeInfo publishDay;
  final String description;
  final String? notification;
  final int? episodesTotal;
  final String? externalPlayer;
  final bool isInProduction;
  final bool isBlockedByGeo;
  final bool isBlockedByCopyrights;
  final int addedInUsersFavorites;
  final int? averageDurationOfEpisode;
  final List<AnimeGenres>? genres;

  Anime({
    required this.id,
    required this.type,
    required this.year,
    required this.name,
    required this.alias,
    required this.season,
    required this.poster,
    required this.freshAt,
    required this.createdAt,
    required this.updatedAt,
    required this.isOngoing,
    required this.ageRating,
    required this.publishDay,
    required this.description,
    required this.notification,
    required this.episodesTotal,
    required this.externalPlayer,
    required this.isInProduction,
    required this.isBlockedByGeo,
    required this.isBlockedByCopyrights,
    required this.addedInUsersFavorites,
    required this.averageDurationOfEpisode,
    required this.genres,
  });

  @override
  String toString() {
    return 'name: $name';
  }
}

class AnimeInfo {
  final String value;
  final String description;

  AnimeInfo({required this.value, required this.description});
}

class AnimeName {
  final String main;
  final String english;
  final String? alternative;

  AnimeName({
    required this.main,
    required this.english,
    required this.alternative,
  });

  @override
  String toString() {
    return 'main: $main';
  }
}

class Poster {
  final String src;
  final String thumbnail;
  final OptimizedPoster optimized;

  String get fullSrc => 'https://anilibria.top$src';

  String get fullThumbnail => 'https://anilibria.top$thumbnail';

  Poster({required this.src, required this.thumbnail, required this.optimized});
}

class OptimizedPoster {
  final String src;
  final String thumbnail;

  String get fullSrc => 'https://anilibria.top$src';

  String get fullThumbnail => 'https://anilibria.top$thumbnail';

  OptimizedPoster({required this.src, required this.thumbnail});
}

class AgeRating {
  final String value;
  final String label;
  final bool isAdult;
  final String description;

  AgeRating({
    required this.value,
    required this.label,
    required this.isAdult,
    required this.description,
  });
}

class AnimeGenres {
  final int id;
  final String name;
  final AnimeGenresImage image;
  final int totalReleases;

  AnimeGenres({
    required this.id,
    required this.name,
    required this.image,
    required this.totalReleases,
  });
}

class AnimeGenresImage {
  final String preview;
  final String thumbnail;
  final AnimeGenresOptimizedImage optimized;

  AnimeGenresImage({
    required this.preview,
    required this.thumbnail,
    required this.optimized,
  });
}

class AnimeGenresOptimizedImage {
  final String preview;
  final String thumbnail;

  AnimeGenresOptimizedImage({
    required this.preview,
    required this.thumbnail,
  });
}
