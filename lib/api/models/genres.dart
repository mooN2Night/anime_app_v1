import 'package:json_annotation/json_annotation.dart';

part 'genres.g.dart';

@JsonSerializable()
class GenresDto {
  final int id;
  final String name;
  final GenresDtoImage image;
  @JsonKey(name: 'total_releases')
  final int totalReleases;

  GenresDto({
    required this.id,
    required this.name,
    required this.image,
    required this.totalReleases,
  });

  factory GenresDto.fromJson(Map<String, dynamic> json) =>
      _$GenresDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GenresDtoToJson(this);

  @override
  String toString() {
    return 'id: $id, name: $name, image: $image, totalReleases; $totalReleases';
  }
}

@JsonSerializable()
class GenresDtoImage {
  final String preview;
  final String thumbnail;
  final OptimizedGenresDtoImage optimized;

  GenresDtoImage({
    required this.preview,
    required this.thumbnail,
    required this.optimized,
  });

  factory GenresDtoImage.fromJson(Map<String, dynamic> json) =>
      _$GenresDtoImageFromJson(json);

  Map<String, dynamic> toJson() => _$GenresDtoImageToJson(this);

  @override
  String toString() {
    return 'preview: $preview, thumbnail: $thumbnail, optimized: $optimized';
  }
}

@JsonSerializable()
class OptimizedGenresDtoImage {
  final String preview;
  final String thumbnail;

  OptimizedGenresDtoImage({required this.preview, required this.thumbnail});

  factory OptimizedGenresDtoImage.fromJson(Map<String, dynamic> json) =>
      _$OptimizedGenresDtoImageFromJson(json);

  Map<String, dynamic> toJson() => _$OptimizedGenresDtoImageToJson(this);

  @override
  String toString() {
    return 'preview: $preview, thumbnail: $thumbnail';
  }
}
