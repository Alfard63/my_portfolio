import 'package:flutter/material.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/hight_lights_info.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/home_banner.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/my_projects.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/my_missions.dart';
import 'package:portfolio/screens/main_screen/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        /* HightLightsInfo(), */
        MyProjects(),
        MyMissions()
      ],
    );
  }
}
