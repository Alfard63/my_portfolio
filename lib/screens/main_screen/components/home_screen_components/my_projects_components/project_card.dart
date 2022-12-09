import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/app_colors.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/models/styles.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/home_banner_components/bordered_text.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double fontSize = Responsive.isMobile(context)
        ? 15
        : Responsive.isMobileLarge(context)
            ? 15
            : Responsive.isTablet(context)
                ? 25
                : 17;
    return Container(
      decoration: Styles.cardDecoration,
      padding: const EdgeInsets.all(defaultPadding / 2),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BorderedText(
            text: project.title!,
            fontSize: fontSize,
            color: AppColors.specialTextColor,
          ),
          const SizedBox(height: defaultPadding / 2),
          BorderedText(
              text: project.description!,
              fontSize: fontSize,
              color: AppColors.textColor2),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [if (project.links != null) ...project.links!],
          ),
        ],
      ),
    );
  }
}
