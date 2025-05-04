import 'package:flutter/material.dart';

import '../../widgets/customised_scaffold.dart';
import 'screen_type/web_view.dart';

class WorkExperiencesSection extends StatefulWidget {
  const WorkExperiencesSection({super.key});

  @override
  State<WorkExperiencesSection> createState() => _WorkExperiencesSectionState();
}

class _WorkExperiencesSectionState extends State<WorkExperiencesSection> {
  @override
  Widget build(BuildContext context) {
    return CustomisedScaffold(
      isStack: true,
      webScaffold: WorkExpWebView(),
      tabletScaffold: Card(),
      mobileScaffold: Card(),
    );
  }
}
