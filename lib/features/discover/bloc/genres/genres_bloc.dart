import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:new_anime_app/repositories/discover/discover.dart';

import '../../../../utils/mapper/mapper.dart';

part 'genres_event.dart';

part 'genres_state.dart';

class GenresBloc extends Bloc<GenresEvent, GenresState> {
  GenresBloc({required DiscoverRepositoryI discoverRepository})
      : _discoverRepository = discoverRepository,
        super(GenresInitial()) {
    on<LoadGenres>(_loadGenres);
  }

  final DiscoverRepositoryI _discoverRepository;

  Future<void> _loadGenres(
    LoadGenres event,
    Emitter<GenresState> emit,
  ) async {
    try {
      emit(GenresLoading());
      final genresDto = await _discoverRepository.fetchGenres();
      if (genresDto.isEmpty) {
        emit(const GenresFailure('Список жанров пуст...'));
        return;
      }

      final genres =
          genresDto.map((genre) => GenresMapper.fromGenresDto(genre)).toList();

      emit(GenresLoaded(genres: genres));
    } catch (e) {
      emit(GenresFailure(e));
    }
  }
}
