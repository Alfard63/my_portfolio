import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/mission.dart';
import 'package:portfolio/models/styles.dart';

class MissionCard extends StatelessWidget {
  final Mission mission;
  const MissionCard({
    Key? key,
    required this.mission,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: Styles.cardDecoration,
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
                    mission.name!,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(mission.entreprise!),
                ],
              ),
              const Spacer(),
              Text(mission.source!),
            ],
          ),
          const SizedBox(height: defaultPadding),
          Text(mission.text!),
        ],
      ),
    );
  }
}
