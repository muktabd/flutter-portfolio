import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../../../global/constants/color_resources.dart';
import '../../../global/widgets/global_text.dart';
import '../data/feedback_data.dart';
import '../data/service_data.dart';
import '../data/skills_data.dart';
import '../data/work_exp_data.dart';
import '../widgets/feedback_card.dart';

import 'components/card_title_widget.dart';
import 'components/onsite_job_timeline_widget.dart';
import 'components/skill_name_card_widget.dart';
import 'service/service_card.dart';
import 'skills/skills_card.dart';
import 'skills/skills_section_title.dart';

class WorkExperiences extends StatelessWidget {
  const WorkExperiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 0.8,
                colors: [
                  ColorRes.bgDarkColor1,
                  ColorRes.bgDarkColor2,
                  ColorRes.bgDarkColor3,
                ],
                stops: [0.2, 0.5, 1.0],
              ),
            ),
          ),
          
          // Scrollable content
          SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding * 2,
                horizontal: kDefaultPadding * 3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CardTitleWidget(
                    title: "Work Experience",
                    subTitle: "The Companies I have worked with",
                  ),
                  const SizedBox(height: kDefaultPadding),

                  ///
                  // CompaniesSection(),
                  SizedBox(
                    width: 1100,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ExperienceTimelineWidget(
                        experienceList: workData,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(20.0),

                  /// * ==@ MAIN SKILLS  == //

                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          skills.length,
                          (index) => SkillsCard(index: index),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(child: SkillNameCardWidget(name: "FIGMA")),
                          const SizedBox(width: 15),
                          Expanded(child: SkillNameCardWidget(name: "POSTMAN")),
                          const SizedBox(width: 15),
                          Expanded(child: SkillNameCardWidget(name: "FIREBASE")),
                          const SizedBox(width: 15),
                          Expanded(child: SkillNameCardWidget(name: "VS CODE")),
                          const SizedBox(width: 15),
                          Expanded(child: SkillNameCardWidget(name: "XCODE")),
                          const SizedBox(width: 15),
                          Expanded(child: SkillNameCardWidget(name: "GIIHUB")),
                        ],
                      ),
                    ],
                  ),

                  /// * ==@ THE SERVICES I AM ABLE TO PROVIDE YOU ==* //

                  const SizedBox(height: kDefaultPadding * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      services.length,
                      (index) => ServiceCard(index: index),
                    ),
                  ),

                  /// * ==@ MY FEEDBACKS ==* //
                  const SizedBox(height: kDefaultPadding * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      feedbacks.length,
                      (index) => FeedbackCard(index: index),
                    ),
                  ),
                  // ),

                  ///
                  // BottomCopyRights(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
