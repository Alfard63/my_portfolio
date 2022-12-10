import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/mission.dart';
import 'package:portfolio/models/styles.dart';

class MissionCard extends StatefulWidget {
  final Mission mission;
  const MissionCard({
    Key? key,
    required this.mission,
  }) : super(key: key);

  @override
  State<MissionCard> createState() => _MissionCardState();
}

class _MissionCardState extends State<MissionCard> {
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
                    widget.mission.name!,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(widget.mission.entreprise!),
                ],
              ),
              const Spacer(),
              Text(widget.mission.job!),
            ],
          ),
          const SizedBox(height: defaultPadding),
          Text(widget.mission.text!,
              maxLines: 5, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
