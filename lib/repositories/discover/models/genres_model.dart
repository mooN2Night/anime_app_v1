class Genres {
  final int id;
  final String name;
  final GenresImage image;
  final int totalReleases;

  Genres({
    required this.id,
    required this.name,
    required this.image,
    required this.totalReleases,
  });
}

class GenresImage {
  final String preview;
  final String thumbnail;
  final OptimizedGenresImage optimized;

  String get fullPreview => 'https://anilibria.top$preview';

  String get fullThumbnail => 'https://anilibria.top$thumbnail';

  GenresImage({
    required this.preview,
    required this.thumbnail,
    required this.optimized,
  });
}

class OptimizedGenresImage {
  final String preview;
  final String thumbnail;

  String get fullPreview => 'https://anilibria.top$preview';

  String get fullThumbnail => 'https://anilibria.top$thumbnail';

  OptimizedGenresImage({required this.preview, required this.thumbnail});
}
