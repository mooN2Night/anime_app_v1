import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_anime_app/features/discover/bloc/new_episodes/new_episodes_bloc.dart';

import '../bloc/random_anime/random_anime_bloc.dart';
import '../widgets/widgets.dart';

@RoutePage()
class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({
    super.key,
  });

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  void initState() {
    BlocProvider.of<RandomAnimeBloc>(context).add(LoadRandomAnime());
    BlocProvider.of<NewEpisodesBloc>(context).add(LoadNewEpisodes());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const DiscoverAppBar(),
        SliverToBoxAdapter(
          child: BlocBuilder<RandomAnimeBloc, RandomAnimeState>(
            builder: (context, state) {
              if (state is! RandomAnimeLoaded) {
                return const SizedBox(
                  width: double.infinity,
                  height: 600,
                );
              }
              final anime = state.anime;
              return RandomAnime(anime: anime);
            },
          ),
        ),
        const SliverPadding(padding: EdgeInsets.only(bottom: 20)),
        SliverToBoxAdapter(
          child: BlocBuilder<NewEpisodesBloc, NewEpisodesState>(
            builder: (context, state) {
              if (state is! NewEpisodesLoaded) {
                if (state is NewEpisodesFailure) {
                  final massage = state.error;
                  return Container(
                    width: double.infinity,
                    color: Colors.indigo,
                    height: 230,
                    child: Text(massage.toString()),
                  );
                }
                return Container(
                  width: double.infinity,
                  color: Colors.grey,
                  height: 230,
                );
              }
              final animeList = state.animeList;
              return NewEpisodes(animeList: animeList);
            },
          ),
        ),
        const SliverPadding(padding: EdgeInsets.only(bottom: 20)),
        const SliverToBoxAdapter(child: ReleaseSchedule()),
      ],
    );
  }
}
