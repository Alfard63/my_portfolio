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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                recommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCard(
                    recommendation: recommendations[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
