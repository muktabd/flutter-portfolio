import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/contact/view/screen_type/web_view.dart';
import 'package:flutter_portfolio/screens/education/view/webview_education_section.dart';
import 'package:flutter_portfolio/screens/experiences/view/screen_type/web_view.dart';
import 'package:flutter_portfolio/screens/projects/webview_project_screen.dart';

import '../../about_me/screen_type/web_about_me.dart';
import '../../blogs/view/webview_blog_section.dart';
import '../../feedback/webview_feedback_section.dart';
import '../../landing/webview_landing_section.dart';

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
          const WorkExpWebView(),

          ///
          const WebViewEducationSection(),

          ///
          const WebViewProjectSection(),

          ///
          const WebViewFeedbackSection(),

          ///
          const WebViewBlogSection(),

          ///
          const WebViewContactMeScreen()

          ///
        ],
      ),
    );
  }
}
