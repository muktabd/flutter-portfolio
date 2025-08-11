import 'package:flutter/material.dart';

import '../../about_me/view/tabview_aboutme_section.dart';
import '../../contact/view/tabview_contactme_section.dart';
import '../../education/view/tabbview_education_section.dart';
import '../../experiences/view/tabview_work_experiences.dart';
import '../../feedback/view/tabview_feedback_section.dart';
import '../../landing/tablet_view.dart';
import '../../package/view/tabview_package_section.dart';
import '../../projects/tabview_project_screen.dart';
import '../../widgets/bottom_copyrights.dart';

class TabletViewScreen extends StatelessWidget {
  const TabletViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TabletViewLandingSection(),

          ///
          const TabViewAboutMeSection(),

          ///
          const TabViewWorkExperiSection(),

          ///
          const TabbViewEducationSection(),

          ///
          const TabViewProjectSection(),

          ///
          const TabViewPackageSection(),

          ///
          const TabViewFeedbackSection(),

          ///
          // const WebViewBlogSection(),

          ///
          const TabviewContactMeScreen(),

          ///
          const BottomCopyRights(),
        ],
      ),
    );
  }
}
