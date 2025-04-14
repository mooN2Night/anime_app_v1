import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../repositories/discover/discover.dart';
import '../../../../utils/mapper/mapper.dart';

part 'random_anime_event.dart';

part 'random_anime_state.dart';

class RandomAnimeBloc extends Bloc<RandomAnimeEvent, RandomAnimeState> {
  RandomAnimeBloc({required DiscoverRepositoryI discoverRepository})
      : _discoverRepository = discoverRepository,
        super(RandomAnimeInitial()) {
    on<LoadRandomAnime>(_loadRandomAnime);
  }

  final DiscoverRepositoryI _discoverRepository;

  Future<void> _loadRandomAnime(
    LoadRandomAnime event,
    Emitter<RandomAnimeState> emit,
  ) async {
    emit(RandomAnimeLoading());
    try {
      final animeDtoList = await _discoverRepository.fetchRandomAnime();
      if (animeDtoList == null || animeDtoList.isEmpty) {
        emit(const RandomAnimeFailure('Не удалось получить аниме.'));
        return;
      }

      final anime = AnimeMapper.fromDto(animeDtoList.first);
      emit(RandomAnimeLoaded(anime: anime));
    } catch (e) {
      emit(RandomAnimeFailure(e.toString()));
    }
  }
}
