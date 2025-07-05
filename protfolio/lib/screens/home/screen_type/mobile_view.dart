import 'package:flutter/material.dart';

import '../../about_me/view/mobileview_aboutme_section.dart';
import '../../blogs/view/mobileview_blog_section.dart';
import '../../contact/view/mobileview_contactme_section.dart';
import '../../education/view/movileview_education_section.dart';
import '../../experiences/view/mobileview_work_experiment.dart';
import '../../feedback/view/mobileview_feedback_section.dart';
import '../../landing/mobile_view.dart';
import '../../package/view/mobileview_package_section.dart';
import '../../projects/view/mobileview_project_screen.dart';
import '../../widgets/bottom_copyrights.dart';

class MobileViewScreen extends StatelessWidget {
  const MobileViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const MobileViewLandingSection(),

        ///
        const MobileViewAboutMeSection(),

        ///
        const MobileViewWorkExperiSection(),

        ///
        const MobileViewEducationSection(),

        ///
        const MobileViewProjectSection(),

        ///
        const MobileViewPackageSection(),

        ///
        const MobileViewFeedbackSection(),

        ///
        const MobileViewBlogSection(),

        ///
        const MobileviewContactMeScreen(),

        ///
        const BottomCopyRights(),
      ],
    );
  }
}
