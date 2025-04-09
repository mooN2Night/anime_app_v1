import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class OngoingUpdates extends StatelessWidget {
  const OngoingUpdates({
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
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Обновления онгоингов', style: theme.textTheme.headlineMedium),
              const Icon(IconlyLight.arrowRight2),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 190,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 145,
                    width: 145,
                    margin: EdgeInsets.only(right: index == 19 ? 0 : 8),
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 30,
                    width: 145,
                    margin: EdgeInsets.only(right: index == 19 ? 0 : 8),
                    color: Colors.grey,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
