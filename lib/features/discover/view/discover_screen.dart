import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

@RoutePage()
class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        DiscoverAppBar(),
        SliverToBoxAdapter(child: RandomAnime()),
        SliverPadding(padding: EdgeInsets.only(bottom: 20)),
        SliverToBoxAdapter(child: OngoingUpdates()),
        SliverPadding(padding: EdgeInsets.only(bottom: 20)),
        SliverToBoxAdapter(child: ReleaseSchedule()),
      ],
    );
  }
}
