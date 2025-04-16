// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenresDto _$GenresDtoFromJson(Map<String, dynamic> json) => GenresDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: GenresDtoImage.fromJson(json['image'] as Map<String, dynamic>),
      totalReleases: (json['total_releases'] as num).toInt(),
    );

Map<String, dynamic> _$GenresDtoToJson(GenresDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'total_releases': instance.totalReleases,
    };

GenresDtoImage _$GenresDtoImageFromJson(Map<String, dynamic> json) =>
    GenresDtoImage(
      preview: json['preview'] as String,
      thumbnail: json['thumbnail'] as String,
      optimized: OptimizedGenresDtoImage.fromJson(
          json['optimized'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenresDtoImageToJson(GenresDtoImage instance) =>
    <String, dynamic>{
      'preview': instance.preview,
      'thumbnail': instance.thumbnail,
      'optimized': instance.optimized,
    };

OptimizedGenresDtoImage _$OptimizedGenresDtoImageFromJson(
        Map<String, dynamic> json) =>
    OptimizedGenresDtoImage(
      preview: json['preview'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$OptimizedGenresDtoImageToJson(
        OptimizedGenresDtoImage instance) =>
    <String, dynamic>{
      'preview': instance.preview,
      'thumbnail': instance.thumbnail,
    };
