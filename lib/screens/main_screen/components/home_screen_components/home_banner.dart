import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/constants/images_constants.dart';
import 'package:portfolio/models/app_colors.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/home_banner_components/bordered_text.dart';
import 'package:portfolio/screens/main_screen/components/home_screen_components/home_banner_components/my_build_animated_text.dart';
import 'package:portfolio/constants/text_constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            bannerBackgroundImg,
            fit: BoxFit.cover,
          ),
          Container(
            color: AppColors.primaryColor.withOpacity(0.3),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BorderedText(
                    text: bannerTitle,
                    fontSize: Responsive.isMobileLarge(context)
                        ? 28.0
                        : Responsive.isTablet(context)
                            ? 40.0
                            : 50.0,
                    color: AppColors.textColor2),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                const MyBuildAnimatedText(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
