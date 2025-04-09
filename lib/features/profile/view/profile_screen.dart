import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../widgets/widgets.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Никнейм'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(IconlyLight.setting),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 150,
              child: Image.asset('assets/images/man_empty_avatar.png'),
            ),
            const SizedBox(height: 40),
            const RowStatus(text: 'Запланировано', count: 1),
            const RowStatus(text: 'Смотрю', count: 3),
            const RowStatus(text: 'Просмотрено', count: 5),
            const RowStatus(text: 'Отложено', count: 7),
            const RowStatus(text: 'Брошено', count: 9),
          ],
        ),
      ),
    );
  }
}
