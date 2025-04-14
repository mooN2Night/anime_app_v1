part of 'new_episodes_bloc.dart';

@immutable
sealed class NewEpisodesState extends Equatable {
  const NewEpisodesState();

  @override
  List<Object?> get props => [];
}

final class NewEpisodesInitial extends NewEpisodesState {}

final class NewEpisodesLoading extends NewEpisodesState {}

final class NewEpisodesLoaded extends NewEpisodesState {
  const NewEpisodesLoaded({required this.animeList});

  final List<Anime> animeList;

  @override
  List<Object?> get props => super.props..add(animeList);
}

final class NewEpisodesFailure extends NewEpisodesState {
  const NewEpisodesFailure(this.error);

  final Object error;

  @override
  List<Object?> get props => super.props..add(error);
}
