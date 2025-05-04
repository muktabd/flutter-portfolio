import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../settings/theme/controller/theme_controller.dart';
import '../../widgets/customised_scaffold.dart';
import '../screen_type/web_about_me.dart';

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({super.key});

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends State<AboutMeSection> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeCon) {
        return CustomisedScaffold(
          webScaffold: WebAboutMeSection(),
          tabletScaffold: Card(),
          mobileScaffold: Card(),
        );
      },
    );
  }
}
