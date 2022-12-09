import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/models/app_colors.dart';

final defaultFont = GoogleFonts.nunito();

class Styles {
  static final title = defaultFont.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor2,
  );
  static final subTitle = defaultFont.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor2,
  );

  static final categoryTitle = defaultFont.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.lightTextColor,
  );

  static final categoryBigTitle = defaultFont.copyWith(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: AppColors.lightTextColor,
  );

  static final body = defaultFont.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor1,
  );

  static final strongText = defaultFont.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w900,
    color: AppColors.lightTextColor,
  );

  static final bannerText = defaultFont.copyWith(
    fontWeight: FontWeight.w700,
    color: AppColors.textColor2,
  );

  static final highLightText = defaultFont.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor1,
  );
  static TextStyle getBorderedText(TextStyle textStyle) {
    return textStyle.copyWith(
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3
        ..color = Colors.black.withOpacity(0.3),
    );
  }

  static final bannerAnimatedText = bannerText.copyWith(
    fontWeight: FontWeight.w700,
  );

  static const cardDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    color: AppColors.secondaryColor,
    boxShadow: [
      BoxShadow(
        offset: Offset(2, 4),
        blurRadius: 0,
        color: AppColors.primaryColor,
      ),
    ],
  );
}
