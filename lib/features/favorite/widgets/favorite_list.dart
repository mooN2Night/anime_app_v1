import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

const description =
    'Описание аниме, которое тоже модет быть очень длинным и тупым, но мы слушаем и не осуждаем, потому что аниме - это жизнь';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return const BaseContainer(
            description: description,
            info: 'Тут будут поля\nЕщё поля\nИ ещё поля',
          );
        },
      ),
    );
  }
}
