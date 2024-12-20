import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'button_style.dart';

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
      height: 50,
      width: 220,
      child: ElevatedButton(
        style: ButtonStyles.getButtonStyle(context: context),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: titleColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  ///* ==@ LAPTOP SCREEN VIEW STYLES ==
  static SizedBox laptopButton({
    required BuildContext context,
    required VoidCallback onPressed,
    required String title,
    Color? color,
    Color? titleColor,
  }) {
    return SizedBox(
      width: 250,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyles.getButtonStyle(context: context),
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
  static SizedBox largeButton({
    required BuildContext context,
    required VoidCallback onPressed,
    required String title,
    Color? color,
  }) {
    return SizedBox(
      width: 260,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyles.getButtonStyle(context: context),
        child: Text(
          title,
          style: TextStyle(
            color: color ?? Colors.white,
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }

  ///* ==@ EXTRA LARGE SCREEN VIEW STYLES ==
  static SizedBox extralargeButton({
    required BuildContext context,
    required VoidCallback onPressed,
    required String title,
    Color? color,
  }) {
    return SizedBox(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyles.getButtonStyle(context: context),
        child: Text(
          title,
          style: TextStyle(
            color: color ?? Colors.white,
            fontSize: 25.0,
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

    if (kIsWeb) {
      ///* MOBILE VIEW STYLES
      if (width <= 500) {
        log("now width less then  $width < 500 ");
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
        return laptopButton(
          context: parentCtx,
          onPressed: onPressed,
          title: title,
          titleColor: titleColor,
        );
      }

      /// * ==@ LARGE SCREEN STYLE ==
      if (width <= 1440) {
        return largeButton(context: parentCtx, onPressed: onPressed, title: title);
      } else {
        /// * ==@ LARGE SCREEN STYLE ==
        return extralargeButton(context: parentCtx, onPressed: onPressed, title: title);
      }
    }

    /// * DEFAULT ALWAYS KEEP MOBILE VIEW ==
    return mobileButton(context: parentCtx, onPressed: onPressed, title: title);
  }
}
