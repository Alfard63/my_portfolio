import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/hight_lights_info_components/animated_counter.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/hight_lights_info_components/hight_light.dart';

class HightLightsInfo extends StatelessWidget {
  const HightLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: defaultPadding,
          horizontal: !Responsive.isDesktop(context) ? defaultPadding : 0),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HighLight(
                      counter: AnimatedCounter(value: 30, text: "+"),
                      label: "Projets réalisés",
                    ),
                    HighLight(
                      counter: AnimatedCounter(value: 30, text: "+"),
                      label: "Projets réalisés",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HighLight(
                      counter: AnimatedCounter(value: 30, text: "+"),
                      label: "Projets réalisés",
                    ),
                    HighLight(
                      counter: AnimatedCounter(value: 30, text: "+"),
                      label: "Projets réalisés",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HighLight(
                  counter: AnimatedCounter(value: 30, text: "+"),
                  label: "Projets réalisés",
                ),
                HighLight(
                  counter: AnimatedCounter(value: 30, text: "+"),
                  label: "Projets réalisés",
                ),
                HighLight(
                  counter: AnimatedCounter(value: 30, text: "+"),
                  label: "Projets réalisés",
                ),
                HighLight(
                  counter: AnimatedCounter(value: 30, text: "+"),
                  label: "Projets réalisés",
                ),
              ],
            ),
    );
  }
}
