import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class DiscoverAppBar extends StatelessWidget {
  const DiscoverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text('Animania'),
      floating: true,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(IconlyLight.search),
        )
      ],
    );
  }
}
