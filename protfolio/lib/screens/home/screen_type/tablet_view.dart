import 'package:flutter/material.dart';

import '../../about_me/view/tabview_aboutme_section.dart';
import '../../about_me/view/webview_aboutme_section.dart';
import '../../blogs/view/webview_blog_section.dart';
import '../../contact/view/tabview_contactme_section.dart';
import '../../education/view/webview_education_section.dart';
import '../../experiences/view/webview_work_experi.dart';
import '../../feedback/webview_feedback_section.dart';
import '../../landing/tablet_view.dart';
import '../../package/view/mobileview_package_section.dart';
import '../../projects/webview_project_screen.dart';
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
          const WebViewWorkExperiSection(),

          ///
          const WebViewEducationSection(),

          ///
          const WebViewProjectSection(),

          ///
          const MobileViewPackageSection(),

          ///
          const WebViewFeedbackSection(),

          ///
          // const WebViewBlogSection(),

          ///
          TabviewContactMeScreen(),

          ///
          const BottomCopyRights(),
        ],
      ),
    );
  }
}
