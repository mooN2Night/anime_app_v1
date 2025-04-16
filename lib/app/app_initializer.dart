import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_anime_app/features/discover/bloc/detail_anime/detail_anime_bloc.dart';
import 'package:new_anime_app/features/discover/bloc/genres/genres_bloc.dart';
import 'package:new_anime_app/features/discover/bloc/new_episodes/new_episodes_bloc.dart';
import 'package:new_anime_app/features/discover/bloc/schedule_now/schedule_now_bloc.dart';

import '../api/api.dart';
import '../features/discover/bloc/random_anime/random_anime_bloc.dart';
import '../repositories/discover/discover.dart';

class AppInitializer extends StatelessWidget {
  const AppInitializer({super.key, required this.child, required this.client});

  final RestClient client;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<DiscoverRepositoryI>(
          create: (context) => DiscoverRepository(client: client),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => RandomAnimeBloc(
              discoverRepository: context.read<DiscoverRepositoryI>(),
            ),
          ),
          BlocProvider(
            create: (context) => NewEpisodesBloc(
              discoverRepository: context.read<DiscoverRepositoryI>(),
            ),
          ),
          BlocProvider(
            create: (context) => ScheduleNowBloc(
              discoverRepository: context.read<DiscoverRepositoryI>(),
            ),
          ),
          BlocProvider(
            create: (context) => GenresBloc(
              discoverRepository: context.read<DiscoverRepositoryI>(),
            ),
          ),
          BlocProvider(
            create: (context) => DetailAnimeBloc(
              discoverRepository: context.read<DiscoverRepositoryI>(),
            ),
          ),
        ],
        child: child,
      ),
    );
  }
}
