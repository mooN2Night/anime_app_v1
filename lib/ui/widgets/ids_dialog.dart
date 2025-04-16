import 'package:flutter/material.dart';

class IdsDialog extends StatelessWidget {
  const IdsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Запланировано'),
          Text('Смотрю'),
          Text('Просмотрено'),
          Text('Отложено'),
          Text('Брошено'),
        ],
      ),
    );
  }
}
