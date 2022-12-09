import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/text_constants.dart';
import 'package:portfolio/models/app_colors.dart';
import 'package:portfolio/models/styles.dart';
import 'package:portfolio/responsive.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double fontSize = Responsive.isMobileLarge(context)
        ? 16.0
        : Responsive.isTablet(context)
            ? 25.0
            : 28.0;
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          FlutterCodedText(
            fontSize: fontSize,
          ),
        Stack(
          children: [
            Text(bannerSubTitle,
                style: Styles.getBorderedText(Styles.bannerAnimatedText)
                    .copyWith(fontSize: fontSize)),
            Text(bannerSubTitle,
                style: Styles.bannerAnimatedText.copyWith(fontSize: fontSize)),
          ],
        ),
        AnimatedTexts(fontSize: fontSize),
        if (!Responsive.isMobile(context))
          FlutterCodedText(
            text: "/$bannerFramework",
            fontSize: fontSize,
          ),
      ],
    );
  }
}

class AnimatedTexts extends StatelessWidget {
  const AnimatedTexts({
    Key? key,
    required this.fontSize,
  }) : super(key: key);
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final List<TyperAnimatedText> textListBordered = [
      ...bannerTextList.map((text) => TyperAnimatedText(text,
          speed: const Duration(milliseconds: 60),
          textStyle: Styles.getBorderedText(Styles.bannerAnimatedText)
              .copyWith(fontSize: fontSize)))
    ];
    final List<TyperAnimatedText> textList = [
      ...bannerTextList.map((text) => TyperAnimatedText(text,
          speed: const Duration(milliseconds: 60),
          textStyle: Styles.bannerAnimatedText.copyWith(fontSize: fontSize)))
    ];
    return Stack(
      children: [
        AnimatedTextKit(
          animatedTexts: textListBordered,
          isRepeatingAnimation: true,
          repeatForever: true,
        ),
        AnimatedTextKit(
          animatedTexts: textList,
          isRepeatingAnimation: true,
          repeatForever: true,
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  final String text;
  final double fontSize;
  const FlutterCodedText({
    Key? key,
    this.text = bannerFramework,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text("<" + text + ">",
            style: Styles.getBorderedText(Styles.bannerAnimatedText)
                .copyWith(fontSize: fontSize)),
        Text("<" + text + ">",
            style: Styles.bannerAnimatedText.copyWith(
                color: AppColors.specialTextColor, fontSize: fontSize)),
      ],
    );
  }
}
