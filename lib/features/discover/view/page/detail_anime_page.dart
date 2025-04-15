import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../repositories/discover/discover.dart';

@RoutePage()
class DetailAnimePage extends StatelessWidget {
  const DetailAnimePage({super.key, required this.anime});

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
