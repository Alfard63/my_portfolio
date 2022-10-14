import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class AreaInfoText extends StatelessWidget {
  final String title, text;
  const AreaInfoText({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: blueStyle,
          ),
          Text(text)
        ],
      ),
    );
  }
}
