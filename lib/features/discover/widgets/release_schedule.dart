import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ReleaseSchedule extends StatelessWidget {
  const ReleaseSchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Расписание релизов', style: theme.textTheme.headlineMedium),
              const Icon(IconlyLight.arrowRight2),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: index == 4 ? 0 : 8),
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 1000),
      ],
    );
  }
}
