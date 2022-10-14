import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class KnowledgeText extends StatelessWidget {
  final String text;
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.check, color: primaryColor),
        const SizedBox(width: defaultPadding / 2),
        Text(text),
      ],
    );
  }
}
