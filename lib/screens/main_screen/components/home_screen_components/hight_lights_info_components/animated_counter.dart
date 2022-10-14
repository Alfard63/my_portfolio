import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class AnimatedCounter extends StatelessWidget {
  final int value;
  final String text;
  const AnimatedCounter({
    Key? key,
    required this.value,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 1, end: value),
      duration: defaultDuration,
      builder: ((context, value, child) => Text(
            "$value+",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: primaryColor),
          )),
    );
  }
}
