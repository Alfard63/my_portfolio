import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_linear_progress_indicator.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/app_colors.dart';
import 'package:portfolio/models/styles.dart';

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
          child: Text("Coding",
              style:
                  Styles.categoryTitle.copyWith(color: AppColors.textColor1)),
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
