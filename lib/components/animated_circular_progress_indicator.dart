import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/app_colors.dart';
import 'package:portfolio/models/styles.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final String label;
  final double percentage;
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.label,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage / 100),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 15,
                  value: value,
                  color: AppColors.primaryColor,
                  backgroundColor: AppColors.primaryColor.withOpacity(0.2),
                ),
                Center(
                  child: Text(
                    (value * 100).toStringAsFixed(0) + "%",
                    style: Styles.categoryTitle,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.categoryTitle,
        ),
      ],
    );
  }
}
