import 'package:flutter/material.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/hight_lights_info_components/animated_counter.dart';

class HighLight extends StatelessWidget {
  final AnimatedCounter counter;
  final String? label;
  const HighLight({Key? key, required this.counter, this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      counter,
      Text(
        label!,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    ]);
  }
}