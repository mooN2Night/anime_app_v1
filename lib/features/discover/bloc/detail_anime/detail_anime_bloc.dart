import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:new_anime_app/utils/utils.dart';

import '../../../../repositories/discover/discover.dart';

part 'detail_anime_event.dart';

part 'detail_anime_state.dart';

class DetailAnimeBloc extends Bloc<DetailAnimeEvent, DetailAnimeState> {
  DetailAnimeBloc({required DiscoverRepositoryI discoverRepository})
      : _discoverRepositoryI = discoverRepository,
        super(DetailAnimeInitial()) {
    on<LoadDetailAnime>(_loadDetailAnime);
  }

  final DiscoverRepositoryI _discoverRepositoryI;

  Future<void> _loadDetailAnime(
    LoadDetailAnime event,
    Emitter<DetailAnimeState> emit,
  ) async {
    try {
      emit(DetailAnimeLoading());

      final animeDto = await _discoverRepositoryI.fetchDetailAnime(event.alias);
      final anime = AnimeMapper.fromAnimeDto(animeDto);
      emit(DetailAnimeLoaded(anime: anime));
    } catch (e) {
      emit(DetailAnimeFailure(error: e));
    }
  }
}
