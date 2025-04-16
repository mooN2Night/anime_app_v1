part of 'detail_anime_bloc.dart';

@immutable
sealed class DetailAnimeState extends Equatable {
  const DetailAnimeState();

  @override
  List<Object?> get props => [];
}

final class DetailAnimeInitial extends DetailAnimeState {}

final class DetailAnimeLoading extends DetailAnimeState {}

final class DetailAnimeLoaded extends DetailAnimeState {
  const DetailAnimeLoaded({required this.anime});

  final Anime anime;

  @override
  List<Object?> get props => super.props..add(anime);
}

final class DetailAnimeFailure extends DetailAnimeState {
  const DetailAnimeFailure({required this.error});

  final Object error;

  @override
  List<Object?> get props => super.props..add(error);
}
