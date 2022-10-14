import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_linear_progress_indicator.dart';
import 'package:portfolio/constants/constants.dart';

class ProgrammingLanguages extends StatelessWidget {
  const ProgrammingLanguages({
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
          child: Text("Coding", style: Theme.of(context).textTheme.subtitle2),
        ),
        const AnimatedLinearProgressIndicator(
          label: "Dart",
          percentage: 60,
        ),
        const AnimatedLinearProgressIndicator(
          label: "Javascript",
          percentage: 65,
        ),
        const AnimatedLinearProgressIndicator(
          label: "HTML",
          percentage: 78,
        ),
        const AnimatedLinearProgressIndicator(
          label: "CSS",
          percentage: 70,
        ),
        const AnimatedLinearProgressIndicator(
          label: "ReactJS",
          percentage: 60,
        ),
        const AnimatedLinearProgressIndicator(
          label: "PHP",
          percentage: 50,
        ),
      ],
    );
  }
}
