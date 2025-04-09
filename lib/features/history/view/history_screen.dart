import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:new_anime_app/ui/ui.dart';

import '../widgets/widgets.dart';

const horizontalPadding = 16.0;

@RoutePage()
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: HelperText(
                text: 'Продолжить просмотр',
              ),
            ),
            SliverToBoxAdapter(
              child: BaseContainer(
                info: 'Просмотрено 6/12 серий',
                openAnime: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Scaffold(
                      appBar: AppBar(
                        title: const Text('1'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: HelperText(
                text: 'Недавние',
              ),
            ),
            SliverList.separated(
              itemCount: 20,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return const LastWatchedListTile();
              },
            ),
          ],
        ),
      ),
    );
  }
}