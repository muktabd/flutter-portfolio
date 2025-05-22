import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:particles_network/particles_network.dart';
import '../../global/constants/color_resources.dart';
import '/screens/settings/theme/controller/theme_controller.dart';

class CustomisedScaffold extends StatelessWidget {
  final Widget webScaffold;
  final Widget tabletScaffold;
  final Widget mobileScaffold;
  final Widget? floatingActionButton;
  // final Decoration? decoration;
  final bool? isStack;
  // final List<Widget>? children;
  const CustomisedScaffold({
    super.key,
    required this.webScaffold,
    required this.tabletScaffold,
    required this.mobileScaffold,
    this.floatingActionButton,
    // this.decoration,
    this.isStack,
    // this.children,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    log(' screen width $screenWidth');
    return Scaffold(
      body:
          isStack == true
              ? Stack(
                children: [
                  ParticleNetwork(
                    particleCount: 50,
                    maxSize: 4.5,
                    particleColor: Colors.white,
                    lineColor: Colors.deepOrange,
                    touchColor: Colors.red,
                  ),
                  if (screenWidth > 950.0)
                    GradientContainer(child: webScaffold)
                  else if (screenWidth > 600.0)
                    GradientContainer(child: tabletScaffold)
                  else
                    GradientContainer(child: mobileScaffold),
                ],
              )
              : GetBuilder<ThemeController>(
                builder: (themeCon) {
                  if (screenWidth > 950.0) {
                    log('web screen');
                    return GradientContainer(child: webScaffold);
                  } else if (screenWidth > 600.0) {
                    log('web screen');
                    log('tablet screen');
                    return GradientContainer(child: tabletScaffold);
                  } else {
                    log('web screen');
                    return GradientContainer(child: mobileScaffold);
                  }
                },
              ),
    );
  }
}

class GradientContainer extends StatelessWidget {
  final Widget? child;
  const GradientContainer({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      constraints: BoxConstraints(maxWidth: 1920),
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 0.8,
          colors: [ColorRes.bgDarkColor1, ColorRes.bgDarkColor2, ColorRes.bgDarkColor3],
          stops: [0.2, 0.5, 1.0],
        ),
      ),
      child: child,
    );
  }
}
