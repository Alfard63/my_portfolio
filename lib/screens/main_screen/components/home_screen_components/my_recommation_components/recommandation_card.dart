import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  final Recommendation recommendation;
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recommendation.name!,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(recommendation.entreprise!),
                ],
              ),
              const Spacer(),
              Text(recommendation.source!),
            ],
          ),
          const SizedBox(height: defaultPadding),
          Text(recommendation.text!),
        ],
      ),
    );
  }
}
