import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

const unauthorizedText =
    'Скорее регистрируйтеся, чтобы добавлять понравившиеся аниме в избранное!';
const unauthorizedImage = 'assets/images/not_auth.png';

const emptyFavoriteText =
    'Вы пока что ничего не добавили в избранное, скорее добавляйте!';
const emptyFavoriteImage = 'assets/images/kaonasi.png';

@RoutePage()
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // TODO Будет BLoC, в котором нужно предусмотреть вариант того, что человек не зарегестрирован или у него пустой список
      // body: FavoriteInfoBanner(
      //   text: emptyFavoriteText,
      //   image: emptyFavoriteImage,
      // ),
      body: FavoriteList(),
    );
  }
}
