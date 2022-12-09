import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/constants/text_constants.dart';
import 'package:portfolio/constants/url_constants.dart';
import 'package:portfolio/models/app_colors.dart';
import 'package:portfolio/models/styles.dart';
import 'package:portfolio/models/url_tools.dart';

class Social extends StatelessWidget {
  const Social({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(
              top: defaultPadding, bottom: defaultPadding / 4),
          child: FittedBox(
            child: TextButton.icon(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
              ),
              onPressed: () => UrlTools.openFile(urlCV),
              label: Icon(
                Icons.picture_as_pdf,
                color: Colors.red.shade900,
              ),
              icon: Text(
                dowlonadCV.toUpperCase(),
                style: Styles.strongText,
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: AppColors.primaryColor,
          ),
          constraints: const BoxConstraints(
            maxWidth: 240,
            minHeight: 40,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          margin: const EdgeInsets.only(bottom: defaultPadding),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () => UrlTools.callTo(phoneNumber),
                child: const Icon(
                  Icons.phone,
                  color: AppColors.bgColor,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () => UrlTools.mailTo(mailAdress, "Contact"),
                child: const Icon(
                  Icons.mail,
                  color: AppColors.bgColor,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () => UrlTools.goToUrl(urlLinkedIn),
                child: const Icon(
                  FontAwesomeIcons.linkedin,
                  color: AppColors.bgColor,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () => UrlTools.goToUrl(urlGitHub),
                child: const Icon(
                  FontAwesomeIcons.github,
                  color: AppColors.bgColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
