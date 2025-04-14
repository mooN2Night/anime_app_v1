import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:new_anime_app/repositories/discover/discover.dart';

import '../../../../utils/mapper/mapper.dart';

part 'new_episodes_event.dart';

part 'new_episodes_state.dart';

const animeCount = 20;

class NewEpisodesBloc extends Bloc<NewEpisodesEvent, NewEpisodesState> {
  NewEpisodesBloc({required DiscoverRepositoryI discoverRepository})
      : _discoverRepository = discoverRepository,
        super(NewEpisodesInitial()) {
    on<LoadNewEpisodes>(_loadNewEpisodes);
  }

  final DiscoverRepositoryI _discoverRepository;

  Future<void> _loadNewEpisodes(
    LoadNewEpisodes event,
    Emitter<NewEpisodesState> emit,
  ) async {
    try {
      emit(NewEpisodesLoading());
      final animeDtoData =
          await _discoverRepository.fetchNewEpisodes(animeCount);
      final animeDtoList = animeDtoData.data;
      final animeList = animeDtoList.map(AnimeMapper.fromAnimeDto).toList();
      emit(NewEpisodesLoaded(animeList: animeList));
    } catch (e) {
      emit(NewEpisodesFailure(e.toString()));
    }
  }
}
