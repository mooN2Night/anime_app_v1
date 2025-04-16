import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: theme.textTheme.headlineMedium),
          const Icon(IconlyLight.arrowRight2),
        ],
      ),
    );
  }
}
