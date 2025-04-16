part of 'genres_bloc.dart';

@immutable
sealed class GenresState extends Equatable {
  const GenresState();

  @override
  List<Object?> get props => [];
}

final class GenresInitial extends GenresState {}

final class GenresLoading extends GenresState {}

final class GenresLoaded extends GenresState {
  const GenresLoaded({required this.genres});

  final List<Genres> genres;

  @override
  List<Object?> get props => super.props..add(genres);
}

final class GenresFailure extends GenresState {
  const GenresFailure(this.error);

  final Object error;

  @override
  List<Object?> get props => super.props..add(error);
}
