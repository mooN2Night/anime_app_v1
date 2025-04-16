import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_anime_app/features/discover/bloc/detail_anime/detail_anime_bloc.dart';

import '../widgets/widgets.dart';

@RoutePage()
class DetailAnimePage extends StatefulWidget {
  const DetailAnimePage({super.key, required this.alias});

  final String alias;

  @override
  State<DetailAnimePage> createState() => _DetailAnimePageState();
}

class _DetailAnimePageState extends State<DetailAnimePage> {
  @override
  void initState() {
    BlocProvider.of<DetailAnimeBloc>(context).add(
      LoadDetailAnime(alias: widget.alias),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<DetailAnimeBloc, DetailAnimeState>(
          builder: (context, state) {
            if (state is! DetailAnimeLoaded) {
              return Container(
                color: Colors.grey,
                width: 200,
                height: 200,
                child: Text('Ошибка'),
              );
            }
            final anime = state.anime;
            return DetailAnimeList(anime: anime);
          },
        ),
      ),
    );
  }
}