import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class RowStatus extends StatelessWidget {
  const RowStatus({
    super.key,
    required this.text,
    required this.count,
  });

  final String text;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 65,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('$text:'),
                  const SizedBox(width: 10),
                  Text(count.toString()),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(IconlyLight.arrowRight),
              )
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
