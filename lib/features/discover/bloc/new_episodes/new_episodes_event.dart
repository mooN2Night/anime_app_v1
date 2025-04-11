part of 'new_episodes_bloc.dart';

@immutable
sealed class NewEpisodesEvent extends Equatable {
  const NewEpisodesEvent();

  @override
  List<Object?> get props => [];
}

final class LoadNewEpisodes extends NewEpisodesEvent {}
