import 'package:flutter/material.dart';
import 'package:new_anime_app/api/api.dart';
import 'package:new_anime_app/app/app_initializer.dart';

import '../router/router.dart';
import '../ui/theme/theme.dart';

class AnimeApp extends StatefulWidget {
  const AnimeApp({super.key, required this.client});

  final RestClient client;

  @override
  State<AnimeApp> createState() => _AnimeAppState();
}

class _AnimeAppState extends State<AnimeApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return AppInitializer(
      client: widget.client,
      child: MaterialApp.router(
        title: 'AniMania',
        theme: lightTheme,
        routerConfig: _router.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
