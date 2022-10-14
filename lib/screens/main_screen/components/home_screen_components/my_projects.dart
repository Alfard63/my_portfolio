import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/my_projects_components/project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: !Responsive.isDesktop(context) ? defaultPadding : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Mes projets",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          const Responsive(
            mobile: ProjectsGridView(crossAxisCount: 1, childAspectRatio: 1.7),
            mobileLarge: ProjectsGridView(crossAxisCount: 2),
            tablet: ProjectsGridView(childAspectRatio: 1.1),
            desktop: ProjectsGridView(),
          )
        ],
      ),
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => ProjectCard(project: projects[index]),
    );
  }
}
