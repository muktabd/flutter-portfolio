import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/screens/settings/theme/controller/theme_controller.dart';

import 'style_name.dart';

class ResponsiveTextStyles {
  ///
  /// * ==@ MOBILE VIEW STYLES ==
  static TextStyle mobileHeaderStyle({
    required BuildContext context,
    double? fontSize,
    Color? color,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 16,
      fontWeight: FontWeight.bold,
      overflow: TextOverflow.ellipsis,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  /// * ==@ TABLET VIEW STYLES ==
  static TextStyle tabletTitleFirstStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 35,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle tabletTitleLastStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 35,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle tabletSubtitleStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 25,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle tabletBodyStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle tabletParagraphStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  /// * ==@ SMALL LAPTOP VIEW STYLES ==
  static TextStyle laptopTitleFirstStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 35,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle laptopTitleLastStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 35,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle laptopSubtitleStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 30,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle laptopBodyStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 30,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle laptopParagraphStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  ///* ==@ LARGE SCREEN VIEW STYLES ==
  static TextStyle largeTitleFirstStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 40,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle largeTitleLastStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 40,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle largeSubtitleStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 35,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle largeBodyStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 30,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  ///* == EXTRA LARGE SCREEN VIEW STYLES ==
  static TextStyle extraLargeTitleFirstStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 60,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle extraLargeTitleLastStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 60,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle extraLargeSubtitleStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 50,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  static TextStyle extraLargeBodyStyle({
    required BuildContext context,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.montserrat(
      fontSize: 35,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Get.find<ThemeController>().getHeadingColor(context),
    );
  }

  ///
  ///*? == GENERAL METHOD TO GET STYLES BASED ON SCREEN SIZE ==
  static TextStyle getTextStyle({
    required BuildContext parentCtx,
    double? fontSize,
    Color? color,
    String? styleType,
    FontWeight? fontWeight,
  }) {
    double width = MediaQuery.of(parentCtx).size.width;
    if (kIsWeb) {
      // MOBILE VIEW STYLES
      if (width <= 500) {
        log("now width like mobile ?? $width");
        return mobileHeaderStyle(
          context: parentCtx,
          color: color,
          fontSize: fontSize,
        );
      }

      ///? ==@ TABLET VIEW ==
      if (width <= 768) {
        if (styleType == styleNames[StyleName.headerTitleFirst]) {
          return tabletTitleFirstStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.headerTitleLast]) {
          return tabletTitleLastStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.bodySubTitle]) {
          return tabletSubtitleStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.bodyTitle]) {
          return tabletBodyStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.paragraph]) {
          return tabletParagraphStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        }
        return tabletSubtitleStyle(context: parentCtx);
      }

      /// * smallL laptop TextStyle
      if (width <= 1024) {
        if (styleType == styleNames[StyleName.headerTitleFirst]) {
          return laptopTitleFirstStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.headerTitleLast]) {
          return laptopTitleLastStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.bodySubTitle]) {
          return laptopSubtitleStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.bodyTitle]) {
          return laptopBodyStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.paragraph]) {
          return laptopParagraphStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        }
        return laptopSubtitleStyle(context: parentCtx);
      }

      /// * ==@ LARGE SCREEN STYLE ==
      if (width <= 1440) {
        if (styleType == styleNames[StyleName.headerTitleFirst]) {
          return largeTitleFirstStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.headerTitleLast]) {
          return largeTitleLastStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.bodySubTitle]) {
          return largeSubtitleStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.bodyTitle]) {
          return largeBodyStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        }

        return largeSubtitleStyle(context: parentCtx);
      } else {
        if (styleType == styleNames[StyleName.headerTitleFirst]) {
          return extraLargeTitleFirstStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.headerTitleLast]) {
          return extraLargeTitleLastStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.bodySubTitle]) {
          return extraLargeSubtitleStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        } else if (styleType == styleNames[StyleName.bodyTitle]) {
          return extraLargeBodyStyle(
            context: parentCtx,
            color: color,
            fontWeight: fontWeight,
          );
        }
      }
    }

    /// * DEFAULT ALWAYS KEEP MOBILE VIEW ==
    return mobileHeaderStyle(context: parentCtx, fontSize: fontSize, color: color);
  }
}
