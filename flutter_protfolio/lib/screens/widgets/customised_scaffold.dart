import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global/constants/color_resources.dart';
import '/screens/settings/theme/controller/theme_controller.dart';
import 'home_dialog_menu.dart';

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
    return Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButton: floatingActionButton ??
          FloatingActionButton(
            child: Icon(Icons.menu),
            onPressed: () async {
              await showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return HomeDialogWidget();
                },
              );
            },
          ),
      body: isStack == true
          ? Stack(
              children: [
                if (screenWidth > 950.0)
                  GradientContainer(
                    child: webScaffold,
                  )
                else if (screenWidth > 600.0)
                  GradientContainer(
                    child: tabletScaffold,
                  )
                else
                  GradientContainer(
                    child: mobileScaffold,
                  ),
              ],
            )
          : GetBuilder<ThemeController>(
              builder: (themeCon) {
                if (screenWidth > 950.0) {
                  log('web screen');
                  return GradientContainer(
                    child: webScaffold,
                  );
                } else if (screenWidth > 600.0) {
                  log('tablet screen');
                  return GradientContainer(
                    child: tabletScaffold,
                  );
                } else {
                  return GradientContainer(
                    child: mobileScaffold,
                  );
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
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 0.8,
          colors: [
            ColorRes.bgDarkColor1,
            ColorRes.bgDarkColor2,
            ColorRes.bgDarkColor3,
          ],
          stops: [0.2, 0.5, 1.0],
        ),
      ),
      child: child,
    );
  }
}
