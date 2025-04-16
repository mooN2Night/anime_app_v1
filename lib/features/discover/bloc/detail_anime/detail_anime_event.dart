part of 'detail_anime_bloc.dart';

@immutable
sealed class DetailAnimeEvent extends Equatable {
  const DetailAnimeEvent();

  @override
  List<Object?> get props => [];
}

final class LoadDetailAnime extends DetailAnimeEvent {
  const LoadDetailAnime({required this.alias});

  final String alias;

  @override
  List<Object?> get props => super.props..add(alias);
}
