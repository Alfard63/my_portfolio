import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/recommendation.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/my_recommation_components/recommandation_card.dart';

class MyRecommandations extends StatelessWidget {
  const MyRecommandations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _controller = ScrollController();
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: defaultPadding,
          horizontal: !Responsive.isDesktop(context) ? defaultPadding : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommandations",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SizedBox(
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
                        child: RecommendationCard(
                          recommendation: recommendations[index],
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
