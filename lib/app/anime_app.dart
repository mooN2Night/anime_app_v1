import 'package:flutter/material.dart';

import '../router/router.dart';
import '../ui/theme/theme.dart';

class AnimeApp extends StatefulWidget {
  const AnimeApp({super.key});

  @override
  State<AnimeApp> createState() => _AnimeAppState();
}

class _AnimeAppState extends State<AnimeApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AniMania',
      theme: lightTheme,
      routerConfig: _router.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
