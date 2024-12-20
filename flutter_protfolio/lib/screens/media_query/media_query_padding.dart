import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScreenPadding {
  ///
  ///
  ///* ==@ GET PADDING BASED ON SCREEN WIDTH ==

  static EdgeInsets mobilePadding() => EdgeInsets.symmetric(horizontal: 10.0);
  static EdgeInsets tabletPadding() => EdgeInsets.symmetric(horizontal: 30.0);
  static EdgeInsets laptopPadding() => EdgeInsets.symmetric(horizontal: 45.0);
  static EdgeInsets largeScreenPadding() => EdgeInsets.symmetric(horizontal: 65.0);
  static EdgeInsets extraLargeScreenPadding() => EdgeInsets.symmetric(horizontal: 85.0);

  /// Get padding based on screen width or custom values
  static EdgeInsets getPadding(
    BuildContext context, {
    double? left,
    double? right,
    double? top,
    double? bottom,
  }) {
    // Determine responsive padding
    double width = MediaQuery.of(context).size.width;
    EdgeInsets basePadding;

    if (kIsWeb) {
      if (width <= 500) {
        basePadding = mobilePadding();
      } else if (width <= 768) {
        basePadding = tabletPadding();
      } else if (width <= 1024) {
        basePadding = laptopPadding();
      } else if (width <= 1440) {
        basePadding = largeScreenPadding();
      } else {
        basePadding = extraLargeScreenPadding();
      }

      // Override specific sides if custom values are provided
      return EdgeInsets.only(
        left: left ?? basePadding.left,
        right: right ?? basePadding.right,
        top: top ?? basePadding.top,
        bottom: bottom ?? basePadding.bottom,
      );
    } else {
      return mobilePadding(); // Default padding for mobile devices
    }
  }
}
