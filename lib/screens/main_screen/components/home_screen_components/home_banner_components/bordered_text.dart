import 'package:flutter/material.dart';
import 'package:portfolio/models/styles.dart';
import 'package:portfolio/responsive.dart';

class BorderedText extends StatelessWidget {
  const BorderedText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.color,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: Styles.getBorderedText(Styles.bannerText)
              .copyWith(fontSize: fontSize),
          maxLines: Responsive.isTablet(context) ? 3 : 4,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          text,
          style: Styles.bannerText.copyWith(fontSize: fontSize, color: color),
          maxLines: Responsive.isTablet(context) ? 3 : 4,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
