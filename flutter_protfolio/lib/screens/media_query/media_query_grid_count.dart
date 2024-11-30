import 'package:flutter/material.dart';

class GridItemCount {
  /// Define item count for different screen sizes
  static int mobileItemCount() => 1;
  static int tabletItemCount() => 2;
  static int smallLaptopItemCount() => 3;
  static int largeScreenItemCount() => 4;

  /// Determine the number of items to show based on screen width
  static int getItemCount(BuildContext context, {int? showItems}) {
    double width = MediaQuery.of(context).size.width;

    // If custom `showItems` is provided, use it
    if (showItems != null) {
      return showItems;
    }

    // Determine the item count based on the screen width
    if (width <= 500) {
      return mobileItemCount();
    } else if (width <= 768) {
      return tabletItemCount();
    } else if (width <= 1024) {
      return smallLaptopItemCount();
    } else if (width <= 1440) {
      return largeScreenItemCount();
    }

    // Default item count for very large screens
    return largeScreenItemCount();
  }
}
