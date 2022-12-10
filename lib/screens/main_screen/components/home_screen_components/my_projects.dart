import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/constants/text_constants.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/models/styles.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/my_projects_components/project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(myProjects, style: Styles.categoryBigTitle),
          const SizedBox(height: defaultPadding),
          const Responsive(
              mobile: ProjectsGridView(
                crossAxisCount: 1,
                childAspectRatio: 1.3,
              ),
              mobileLarge: ProjectsGridView(
                crossAxisCount: 2,
                childAspectRatio: 1.4,
              ),
              tablet: ProjectsGridView(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
              ),
              desktop: ProjectsGridView(
                crossAxisCount: 3,
                childAspectRatio: 1.2,
              ))
        ],
      ),
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  const ProjectsGridView(
      {Key? key, this.childAspectRatio = 1.2, this.crossAxisCount = 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: defaultPadding,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: projects[index],
      ),
    );
  }
}
