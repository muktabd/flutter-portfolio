import 'dart:developer';

import 'package:flutter/material.dart';
import '/screens/settings/theme/controller/theme_controller.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

import 'media_query_padding.dart';
import 'media_query_style.dart';
import 'style_name.dart';

class ButtonStyles {
  ///
  /// * ==@ MOBILE VIEW STYLES ==
  static ButtonStyle mobileButtonStyle({
    required BuildContext context,
    double? fontSize,
    Color? btnBgColor,
    Color? txtColor,
  }) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        btnBgColor ?? Get.find<ThemeController>().getButtonColor(context),
      ),
      padding: WidgetStateProperty.all(
        ScreenPadding.getPadding(context),
      ),
      textStyle: WidgetStatePropertyAll(
        ResponsiveTextStyles.getTextStyle(
          context: context,
          fontSize: fontSize ?? 14,
          color: txtColor,
        ),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  /// * ==@ TABLET VIEW STYLES ==
  static ButtonStyle tabletButtonStyle({
    required BuildContext context,
    double? fontSize,
    Color? color,
  }) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all(color ?? Get.find<ThemeController>().getButtonColor(context)),
      padding: WidgetStateProperty.all(
        ScreenPadding.getPadding(context),
      ),
      textStyle: WidgetStatePropertyAll(
        ResponsiveTextStyles.getTextStyle(
          context: context,
          fontSize: fontSize ?? 14,
          styleType: styleNames[StyleName.bodyTitle],
        ),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  /// * ==@ SMALL LAPTOP VIEW STYLES ==
  static ButtonStyle laptopButtonStyle({
    required BuildContext context,
    Color? color,
    Color? txtColor,
  }) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all(color ?? Get.find<ThemeController>().getButtonColor(context)),
      foregroundColor: WidgetStateProperty.all(txtColor ?? Get.find<ThemeController>().getButtonColor(context)),
      padding: WidgetStateProperty.all(
        EdgeInsets.all(10),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  ///* ==@ LARGE SCREEN VIEW STYLES ==
  static ButtonStyle largeButtonStyle({
    required BuildContext context,
    double? fontSize,
    Color? color,
  }) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all(color ?? Get.find<ThemeController>().getButtonColor(context)),
      padding: WidgetStateProperty.all(
        ScreenPadding.getPadding(context),
      ),
      textStyle: WidgetStateProperty.all(
        TextStyle(
          fontSize: fontSize ?? 20,
          color: Colors.blue,
        ),
      ),
    );
  }

  ///* ==@ EXTRA LARGE SCREEN VIEW STYLES ==
  static ButtonStyle extraLargeButtonStyle({
    required BuildContext context,
  }) {
    return ButtonStyle(
      // backgroundColor: WidgetStateProperty.all(Colors.red),
      // foregroundColor: WidgetStateProperty.all(Colors.white),
      padding: WidgetStateProperty.all(
        ScreenPadding.getPadding(context),
      ),
      textStyle: WidgetStateProperty.all(
        TextStyle(
          fontSize: 20,
          color: Colors.blue,
        ),
      ),
    );
  }

  ///
  ///*? == GENERAL METHOD TO GET STYLES BASED ON SCREEN SIZE ==
  static ButtonStyle getButtonStyle({
    required BuildContext context,
    double? fontSize,
    Color? color,
    Color? txtColor,
    String? styleType,
    FontWeight? fontWeight,
  }) {
    double width = MediaQuery.of(context).size.width;
    log("now width ?? $width");

    // MOBILE VIEW STYLES
    if (width <= 500) {
      return mobileButtonStyle(
        context: context,
        btnBgColor: color,
        txtColor: txtColor,
        fontSize: fontSize,
      );
    }

    ///? ==@ TABLET VIEW ==
    if (width <= 768) {
      return tabletButtonStyle(context: context);
    }

    /// * smallL aptop TextStyle
    if (width <= 1024) {
      return laptopButtonStyle(context: context);
    }

    /// * ==@ LARGE SCREEN STYLE ==
    if (width <= 1440) {
      return largeButtonStyle(context: context);
    }

    /// * ==@ EXTRA LARGE SCREEN STYLE ==
    if (width <= 1920) {
      return extraLargeButtonStyle(context: context);
    }
    return laptopButtonStyle(context: context, txtColor: txtColor);
  }
}
