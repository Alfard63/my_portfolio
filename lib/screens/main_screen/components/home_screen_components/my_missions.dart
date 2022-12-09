import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/constants/text_constants.dart';
import 'package:portfolio/models/mission.dart';
import 'package:portfolio/models/styles.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/my_recommation_components/mission_card.dart';

class MyMissions extends StatelessWidget {
  const MyMissions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _controller = ScrollController();
    return Container(
      clipBehavior: Clip.none,
      margin: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lastMissions,
            style: Styles.categoryBigTitle,
          ),
          const SizedBox(height: defaultPadding),
          Container(
            clipBehavior: Clip.none,
            height: 200,
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              }),
              child: ListView.builder(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  itemCount: recommendations.length,
                  itemBuilder: (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.only(right: defaultPadding),
                        child: MissionCard(
                          mission: recommendations[index],
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
