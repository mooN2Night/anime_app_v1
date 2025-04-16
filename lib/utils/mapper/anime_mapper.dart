import '../../api/models/models.dart';
import '../../repositories/discover/discover.dart';

class AnimeMapper {
  static Anime fromAnimeDto(AnimeDto dto) {
    return Anime(
      id: dto.id,
      type: AnimeInfo(
        value: dto.type.value ?? '',
        description: dto.type.description ?? '',
      ),
      year: dto.year,
      name: AnimeName(
        main: dto.name.main,
        english: dto.name.english,
        alternative: dto.name.alternative,
      ),
      alias: dto.alias,
      season: AnimeInfo(
        value: dto.season.value,
        description: dto.season.description,
      ),
      poster: Poster(
        src: dto.poster.src,
        thumbnail: dto.poster.thumbnail,
        optimized: OptimizedPoster(
          src: dto.poster.optimized.src,
          thumbnail: dto.poster.optimized.thumbnail,
        ),
      ),
      freshAt: dto.freshAt,
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
      isOngoing: dto.isOngoing,
      ageRating: AgeRating(
        value: dto.ageRating.value,
        label: dto.ageRating.label,
        isAdult: dto.ageRating.isAdult,
        description: dto.ageRating.description,
      ),
      publishDay: AnimeInfo(
        value: dto.publishDay.value.toString(),
        description: dto.publishDay.description,
      ),
      description: dto.description ?? '',
      notification: dto.notification,
      episodesTotal: dto.episodesTotal,
      externalPlayer: dto.externalPlayer,
      isInProduction: dto.isInProduction,
      isBlockedByGeo: dto.isBlockedByGeo,
      isBlockedByCopyrights: dto.isBlockedByCopyrights,
      addedInUsersFavorites: dto.addedInUsersFavorites,
      averageDurationOfEpisode: dto.averageDurationOfEpisode,
      genres: dto.genres?.map((genre) => fromAnimeGenresDto(genre)).toList(),
    );
  }

  static AnimeGenres fromAnimeGenresDto(AnimeDtoGenres dto) {
    return AnimeGenres(
      id: dto.id,
      name: dto.name,
      image: fromAnimeGenresImageDto(dto.image),
      totalReleases: dto.totalReleases,
    );
  }

  static AnimeGenresImage fromAnimeGenresImageDto(
    AnimeDtoGenresImage dto,
  ) {
    return AnimeGenresImage(
      preview: dto.preview,
      thumbnail: dto.thumbnail,
      optimized: fromAnimeGenresOptimizedImageDto(dto.optimized),
    );
  }

  static AnimeGenresOptimizedImage fromAnimeGenresOptimizedImageDto(
    AnimeDtoGenresOptimizedImage dto,
  ) {
    return AnimeGenresOptimizedImage(
      preview: dto.preview,
      thumbnail: dto.thumbnail,
    );
  }
}
