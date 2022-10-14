import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_circular_progress_indicator.dart';
import 'package:portfolio/constants/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Compétences",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                  percentage: 80, label: "Flutter"),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                  percentage: 70, label: "Firebase"),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                  percentage: 55, label: "PostGreSQL"),
            ),
            SizedBox(width: defaultPadding),
          ],
        ),
      ],
    );
  }
}
