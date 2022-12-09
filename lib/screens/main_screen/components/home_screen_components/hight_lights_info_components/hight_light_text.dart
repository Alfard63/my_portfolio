import 'package:flutter/material.dart';
import 'package:portfolio/models/styles.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/hight_lights_info_components/animated_counter.dart';

class HighLightText extends StatelessWidget {
  final AnimatedCounter counter;
  final String? label;
  const HighLightText({Key? key, required this.counter, this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Styles.highLightText,
      child: Row(children: [
        counter,
        const SizedBox(width: 10),
        Text(
          label!,
        ),
      ]),
    );
  }
}
