import 'package:flutter/material.dart';
import 'package:flutter_portfolio/global/widgets/global_text.dart';
import 'package:get/get.dart';

import '../settings/theme/controller/theme_controller.dart';
import '../widgets/customised_scaffold.dart';

class ThoughtsScreen extends StatefulWidget {
  const ThoughtsScreen({super.key});

  @override
  State<ThoughtsScreen> createState() => _ThoughtsScreenState();
}

class _ThoughtsScreenState extends State<ThoughtsScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomisedScaffold(
      isStack: true,
      webScaffold: MoreThoughtsSection(),
      tabletScaffold: Card(),
      mobileScaffold: Card(),
    );
  }
}

class MoreThoughtsSection extends StatefulWidget {
  const MoreThoughtsSection({super.key});

  @override
  State<MoreThoughtsSection> createState() => _MoreThoughtsSectionState();
}

class _MoreThoughtsSectionState extends State<MoreThoughtsSection> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeCon) {
        return Container(
          constraints: BoxConstraints(maxWidth: 2048.0),
          padding: EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [GlobalText(str: "Coming soon..")],
          ),
        );
      },
    );
  }
}
