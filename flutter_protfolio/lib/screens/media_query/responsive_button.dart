import 'dart:developer';
import 'package:flutter/material.dart';

import '../../global/widgets/global_text.dart';
import 'button_style.dart';
import 'media_query_padding.dart';
import 'media_query_style.dart';
import 'style_name.dart';

class ResponsiveButton {
  ///

  ///* ==@ MOBILE SCREEN VIEW STYLES ==
  static SizedBox mobileButton({
    required BuildContext context,
    required String title,
    Color? titleColor,
    required VoidCallback onPressed,
    double? btnHeight,
    double? btnWidth,
    double? fontSize,
  }) {
    return SizedBox(
      height: btnHeight ?? 50,
      width: btnWidth,
      child: ElevatedButton(
        style: ButtonStyles.getButtonStyle(context: context),
        onPressed: onPressed,
        child: Text(
          title,
          style: ResponsiveTextStyles.getTextStyle(
            context: context,
            color: titleColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }

  ///* ==@ LARGE SCREEN VIEW STYLES ==
  static SizedBox extralargeButton({
    required BuildContext context,
    required VoidCallback onPressed,
    required String title,
    Color? color,
  }) {
    return SizedBox(
      width: 350,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyles.getButtonStyle(context: context),
        child: Text(
          title ?? "Press",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  ///
  ///*? == GENERAL METHOD TO GET STYLES BASED ON SCREEN SIZE ==
  static SizedBox getResponsiveButton({
    required BuildContext parentCtx,
    required VoidCallback onPressed,
    required String title,
    double? fontSize,
    double? btnHeight,
    double? btnWidth,
    Color? btnBgColor,
    Color? titleColor,
    String? styleType,
    FontWeight? fontWeight,
  }) {
    double width = MediaQuery.of(parentCtx).size.width;
    log("now width ?? $width");

    ///* MOBILE VIEW STYLES
    if (width <= 500) {
      return mobileButton(
        context: parentCtx,
        title: title,
        titleColor: titleColor,
        fontSize: fontSize,
        btnHeight: btnHeight,
        btnWidth: btnWidth,
        onPressed: onPressed,
      );
    }

    ///? ==@ TABLET VIEW ==
    if (width <= 768) {
      return mobileButton(context: parentCtx, onPressed: onPressed, title: title);
    }

    /// * smallL aptop TextStyle
    if (width <= 1024) {
      return mobileButton(context: parentCtx, onPressed: onPressed, title: title);
    }

    /// * ==@ LARGE SCREEN STYLE ==
    if (width <= 1440) {
      return mobileButton(context: parentCtx, onPressed: onPressed, title: title);
    }

    /// * ==@ LARGE SCREEN STYLE ==
    if (width <= 1920) {
      return extralargeButton(context: parentCtx, onPressed: onPressed, title: title);
    }

    return extralargeButton(context: parentCtx, onPressed: onPressed, title: title);
  }
}
