import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/app_colors.dart';
import 'package:portfolio/models/styles.dart';

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
        const Icon(Icons.check, color: AppColors.secondaryColor),
        const SizedBox(width: defaultPadding / 3),
        Text(
          text,
          style: Styles.body,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
