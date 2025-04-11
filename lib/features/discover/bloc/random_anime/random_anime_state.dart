part of 'random_anime_bloc.dart';

@immutable
sealed class RandomAnimeState extends Equatable {
  const RandomAnimeState();

  @override
  List<Object> get props => [];
}

final class RandomAnimeInitial extends RandomAnimeState {}

final class RandomAnimeLoading extends RandomAnimeState {}

final class RandomAnimeLoaded extends RandomAnimeState {
  const RandomAnimeLoaded({required this.anime});

  final Anime anime;

  @override
  List<Object> get props => super.props..add(anime);
}

final class RandomAnimeFailure extends RandomAnimeState {
  const RandomAnimeFailure(this.error);

  final Object error;

  @override
  List<Object> get props => super.props..add(error);
}
