import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/app_colors.dart';
import 'package:portfolio/models/styles.dart';
import 'package:portfolio/screens/main_screen/components/side_menu_components/knowledge_text.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Packages récemment utilisés",
            style: Styles.categoryTitle.copyWith(color: AppColors.textColor1),
          ),
        ),
        const KnowledgeText(text: "flutter_bloc"),
        const KnowledgeText(text: "freezed"),
        const KnowledgeText(text: "injectable"),
        const KnowledgeText(text: "Firebase"),
        const KnowledgeText(text: "svg_path_parser"),
        const KnowledgeText(text: "auto_route"),
      ],
    );
  }
}
