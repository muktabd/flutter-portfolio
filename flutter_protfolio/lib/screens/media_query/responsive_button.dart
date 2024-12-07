import 'dart:developer';
import 'package:flutter/material.dart';

import 'button_style.dart';
import 'media_query_style.dart';

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
          style: TextStyle(
            color: titleColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }

  ///* ==@ TABLET VIEWS ==
  static SizedBox tableSizeButton({
    required BuildContext context,
    required String title,
    Color? titleColor,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      height: 60,
      width: 280,
      child: ElevatedButton(
        style: ButtonStyles.getButtonStyle(context: context),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: titleColor,
            fontSize: 18,
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
          title,
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
      return tableSizeButton(
        context: parentCtx,
        onPressed: onPressed,
        title: title,
        titleColor: titleColor,
      );
    }

    /// * smallL aptop TextStyle
    if (width <= 1024) {
      return mobileButton(
        context: parentCtx,
        onPressed: onPressed,
        title: title,
      );
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
