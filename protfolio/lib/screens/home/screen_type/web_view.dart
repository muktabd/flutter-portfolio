import 'package:flutter/material.dart';
import '/screens/education/view/webview_education_section.dart';
import '/screens/experiences/view/webview_work_experi.dart';
import '/screens/projects/webview_project_screen.dart';

import '../../about_me/view/webview_aboutme_section.dart';
import '../../blogs/view/webview_blog_section.dart';
import '../../contact/view/webview_contactme_screen.dart';
import '../../feedback/webview_feedback_section.dart';
import '../../landing/webview_landing_section.dart';
import '../../widgets/bottom_copyrights.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const WebViewLandingSection(),

          ///
          const WebAboutMeSection(),

          ///
          const WebViewWorkExperiSection(),

          ///
          const WebViewEducationSection(),

          ///
          const WebViewProjectSection(),

          ///
          const WebViewFeedbackSection(),

          ///
          const WebViewBlogSection(),

          ///
          const WebViewContactMeScreen(),

          ///
          const BottomCopyRights(),
        ],
      ),
    );
  }
}
