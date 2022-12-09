import 'package:flutter/material.dart';
import 'package:portfolio/constants/images_constants.dart';
import 'package:portfolio/constants/text_constants.dart';
import 'package:portfolio/models/app_colors.dart';
import 'package:portfolio/models/styles.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 10,
              color: Colors.black.withOpacity(0.5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 2,
            ),
            Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(avatarImg), fit: BoxFit.cover),
                border: Border.fromBorderSide(
                  BorderSide(color: AppColors.bgColor, width: 4),
                ),
              ),
            ),
            const Spacer(),
            Text(
              myName,
              style: Styles.title,
            ),
            Text(
              myFunction,
              textAlign: TextAlign.center,
              style: Styles.subTitle,
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
