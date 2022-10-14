import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/constants/text_constants.dart';
import 'package:portfolio/responsive.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: Responsive.isDesktop(context) || Responsive.isTablet(context)
            ? Theme.of(context).textTheme.subtitle1!
            : Theme.of(context).textTheme.subtitle2!,
        maxLines: 1,
        child: Row(
          children: [
            if (!Responsive.isMobile(context)) const FlutterCodedText(),
            const Text(bannerSubTitle),
            const AnimatedTexts(),
            if (!Responsive.isMobile(context))
              const FlutterCodedText(
                text: "/$bannerFramework",
              ),
          ],
        ));
  }
}

class AnimatedTexts extends StatelessWidget {
  const AnimatedTexts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        for (final text in bannerTextList)
          TyperAnimatedText(
            text,
            speed: const Duration(milliseconds: 60),
          ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  final String text;
  const FlutterCodedText({
    Key? key,
    this.text = bannerFramework,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: text,
            style: const TextStyle(color: primaryColor),
          ),
          const TextSpan(text: ">"),
        ],
      ),
    );
  }
}
