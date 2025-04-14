part of 'random_anime_bloc.dart';

sealed class RandomAnimeEvent extends Equatable {
  const RandomAnimeEvent();

  @override
  List<Object?> get props => [];
}

final class LoadRandomAnime extends RandomAnimeEvent {}
