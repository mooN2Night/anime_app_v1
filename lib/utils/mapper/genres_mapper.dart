import '../../api/models/models.dart';
import '../../repositories/discover/discover.dart';

class GenresMapper {
  static Genres fromGenresDto(GenresDto dto) {
    return Genres(
      id: dto.id,
      name: dto.name,
      image: fromGenresDtoImage(dto.image),
      totalReleases: dto.totalReleases,
    );
  }

  static GenresImage fromGenresDtoImage(GenresDtoImage dto) {
    return GenresImage(
      preview: dto.preview,
      thumbnail: dto.thumbnail,
      optimized: fromOptimizedDtoGenresImage(dto.optimized),
    );
  }

  static OptimizedGenresImage fromOptimizedDtoGenresImage(
    OptimizedGenresDtoImage dto,
  ) {
    return OptimizedGenresImage(
      preview: dto.preview,
      thumbnail: dto.thumbnail,
    );
  }
}
