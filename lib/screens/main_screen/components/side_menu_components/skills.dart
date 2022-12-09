import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_circular_progress_indicator.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/app_colors.dart';
import 'package:portfolio/models/styles.dart';

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
            style: Styles.categoryTitle.copyWith(color: AppColors.textColor1),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  percentage: 55, label: "Serverpod"),
            ),
          ],
        ),
      ],
    );
  }
}
