import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

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
                  strokeWidth: 10,
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text((value * 100).toStringAsFixed(0) + "%"),
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
          style: blueStyle,
        ),
      ],
    );
  }
}
