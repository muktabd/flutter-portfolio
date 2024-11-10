import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/constants.dart';
import 'package:flutter_portfolio/global/methods/sizebox_widget.dart';
import 'package:flutter_portfolio/global/widgets/global_text.dart';
import 'package:flutter_portfolio/screens/settings/theme/controller/theme_controller.dart';
import 'package:flutter_portfolio/screens/widgets/customised_scroll_view.dart';
import 'package:get/get.dart';
import '../../../controller/url_controller/url_controller.dart';

import '../../../global/constants/images.dart';
import 'service/service_section.dart';
import 'skills/skills.dart';
import '../widgets/company_name_card.dart';
import '../widgets/experience_card.dart';
import 'feedback_section.dart';
import 'job_history_section.dart';

class WorkExperiencesScreen extends StatefulWidget {
  const WorkExperiencesScreen({super.key});

  @override
  State<WorkExperiencesScreen> createState() => _WorkExperiencesScreenState();
}

class _WorkExperiencesScreenState extends State<WorkExperiencesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UrlAndPlatformController>(
      builder: (urlnPlatformCon) {
        return GetBuilder<ThemeController>(
          builder: (themeCon) {
            return CustomisedScrolView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/work_exp1.jpeg"),
                        // fit: BoxFit.fitHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GlobalText(str: "Work\nExperience"),
                        sizedBoxH(20),

                        ///
                        const ExperienceCard(numOfExp: "05"),
                        const SizedBox(height: kDefaultPadding * 3),
                        GlobalText(
                          str:
                              "I am working on Mobile, Web, Windows & macOS application development. For development, I am using the flutter, a single code base design framework. For the backedn using NodeJS. I am willing to learn from other's and a quick self learner too.",
                        ),

                        GlobalText(
                          str:
                              "From 2016 I have started to learning mobile app development and very beginnning I was a native app developer using Android studio with Java. Professionally I have started my journey from 2018 full time part time and sometimes contract based jobs. And now it's 5 years ovaerall experices I have",
                        ),
                        const SizedBox(height: kDefaultPadding * 3),
                        //
                      ],
                    ),
                  ),
                ),
                SliverList.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return JobHistorySection();
                  },
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(height: kDefaultPadding * 2),
                      FeedbackSection(),
                      const SizedBox(height: kDefaultPadding * 2),
                      ServiceSection(),
                      const SizedBox(height: kDefaultPadding * 2),
                      MySkills(),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
