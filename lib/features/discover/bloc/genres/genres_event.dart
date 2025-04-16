part of 'genres_bloc.dart';

@immutable
sealed class GenresEvent extends Equatable {

  @override
  List<Object?> get props => [];
}

final class LoadGenres extends GenresEvent {}