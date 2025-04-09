import 'package:flutter/material.dart';

class HelperText extends StatelessWidget {
  const HelperText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        text,
        style: theme.textTheme.headlineMedium,
      ),
    );
  }
}
