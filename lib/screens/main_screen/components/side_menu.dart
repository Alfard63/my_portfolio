import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/constants/images_constants.dart';
import 'package:portfolio/models/app_colors.dart';
import 'package:portfolio/screens/main_screen/components/side_menu_components/area_info_text.dart';
import 'package:portfolio/screens/main_screen/components/side_menu_components/knowledge.dart';
import 'package:portfolio/screens/main_screen/components/side_menu_components/my_info.dart';
import 'package:portfolio/screens/main_screen/components/side_menu_components/programming_languages.dart';
import 'package:portfolio/screens/main_screen/components/side_menu_components/skills.dart';
import 'package:portfolio/screens/main_screen/components/side_menu_components/social.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(defaultPadding),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(bgImg),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      AreaInfoText(
                        title: "Age",
                        text: "${DateTime.now().year - 1988} ans",
                      ),
                      const AreaInfoText(
                        title: "Adresse",
                        text: "Clermont-Fd (63)",
                      ),
                      const Skills(),
                      const SizedBox(height: defaultPadding),
                      const ProgrammingLanguages(),
                      const SizedBox(height: defaultPadding),
                      const Knowledge(),
                      const SizedBox(height: defaultPadding),
                      const Social(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
