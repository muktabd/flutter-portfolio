import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/sections/about/about_section.dart';
import 'package:flutter_portfolio/sections/contact/contact_section.dart';
import 'package:flutter_portfolio/sections/education/education_section.dart';
import 'package:flutter_portfolio/sections/feedback/feedback_section.dart';
import 'package:flutter_portfolio/sections/job_history/job_history_section.dart';
import 'package:flutter_portfolio/sections/recent_work/recent_work_section.dart';
import 'package:flutter_portfolio/sections/service/service_section.dart';
import 'package:flutter_portfolio/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopSection(),
            const SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            const ServiceSection(),
            const EducationSection(),
            RecentWorkSection(),
            const JobHistorySection(),
            FeedbackSection(),
            const SizedBox(height: kDefaultPadding),
            ContactSection(),
            // This SizeBox just for demo
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
    );
  }
}
