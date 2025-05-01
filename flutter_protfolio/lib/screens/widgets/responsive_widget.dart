import 'dart:developer';

import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? webScreen;
  final Widget? tabletScreen;
  final Widget? mobileScreen;

  const ResponsiveWidget({
    super.key,
    this.webScreen,
    this.tabletScreen,
    this.mobileScreen,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 950.0) {
      log('Web Screen');
      return webScreen ?? tabletScreen ?? mobileScreen!;
    }
    if (screenWidth > 600.0) {
      log('tablet Screen');
      return tabletScreen ?? mobileScreen ?? webScreen!;
    }

    log('mobile Screen');
    return mobileScreen ?? tabletScreen ?? webScreen!;
  }
}
