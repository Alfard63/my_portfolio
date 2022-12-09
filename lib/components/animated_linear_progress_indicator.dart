import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/app_colors.dart';
import 'package:portfolio/models/styles.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  final double percentage;
  final String label;
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage / 100),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label, style: Styles.categoryTitle),
                Text("${(value * 100).toStringAsFixed(0)}%",
                    style: Styles.categoryTitle),
              ],
            ),
            const SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              minHeight: 10,
              value: value,
              color: AppColors.primaryColor,
              backgroundColor: AppColors.secondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
