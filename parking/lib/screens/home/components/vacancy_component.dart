import 'package:flutter/material.dart';

class VacancyComponent extends StatelessWidget {
  final String number;
  final String caption;
  const VacancyComponent({
    super.key,
    required this.number,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/parking.png",
          width: 48, /* 48dp * (dpi / 160) */
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              number,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              caption,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
