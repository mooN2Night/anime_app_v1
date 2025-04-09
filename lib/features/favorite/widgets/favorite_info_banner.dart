import 'package:flutter/material.dart';

class FavoriteInfoBanner extends StatelessWidget {
  const FavoriteInfoBanner(
      {super.key, required this.text, required this.image});

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, height: 300, width: 300),
          const SizedBox(height: 20),
          Text(
            text,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
