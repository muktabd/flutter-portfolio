import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/settings/theme/controller/theme_controller.dart';
import 'package:get/get.dart';

import '../../global/constants/color_resources.dart';

class CustomisedScaffold extends StatelessWidget {
  final Widget mainScaffold;
  const CustomisedScaffold({super.key, required this.mainScaffold});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ThemeController>(
        builder: (themeCon) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // padding: EdgeInsets.all(100),
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
            child: SingleChildScrollView(
              child: mainScaffold,
            ),
          );
        },
      ),
    );
  }
}
