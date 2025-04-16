import 'package:flutter/material.dart';

class DetailAnimeInfo extends StatelessWidget {
  const DetailAnimeInfo(this.title, this.label, {super.key});

  final String title;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        const SizedBox(width: 5),
        Text(label),
      ],
    );
  }
}
