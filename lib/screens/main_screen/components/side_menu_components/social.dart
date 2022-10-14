import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class Social extends StatelessWidget {
  const Social({
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
          child: TextButton(
              onPressed: () {},
              child: FittedBox(
                child: Row(children: [
                  Text(
                    "Télécharger mon CV".toUpperCase(),
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                  const SizedBox(width: defaultPadding / 2),
                  Icon(
                    Icons.download,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ]),
              )),
        ),
        Container(
          color: bgColor2,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
            const Spacer(),
          ]),
        )
      ],
    );
  }
}
