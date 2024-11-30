import 'package:flutter/material.dart';

class ScreenPadding {
  ///
  ///
  ///* ==@ GET PADDING BASED ON SCREEN WIDTH ==

  static EdgeInsets mobilePadding() => EdgeInsets.symmetric(horizontal: 10.0);
  static EdgeInsets tabletPadding() => EdgeInsets.symmetric(horizontal: 50.0);
  static EdgeInsets smallLaptopPadding() => EdgeInsets.symmetric(horizontal: 80.0);
  static EdgeInsets largeScreenPadding() => EdgeInsets.symmetric(horizontal: 140.0);
  static EdgeInsets extraLargeScreenPadding() => EdgeInsets.symmetric(horizontal: 200.0);

  /// Get padding based on screen width or custom values
  static EdgeInsets getPadding(BuildContext context, {double? left, right, top, bottom}) {
    // Determine responsive padding
    double width = MediaQuery.of(context).size.width;
    EdgeInsets basePadding;

    if (width <= 500) {
      basePadding = mobilePadding();
    } else if (width <= 768) {
      basePadding = tabletPadding();
    } else if (width <= 1024) {
      basePadding = smallLaptopPadding();
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
  }
}
