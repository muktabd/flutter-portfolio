import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/widgets/customised_scaffold.dart';
import 'package:flutter_portfolio/screens/widgets/customised_scroll_view.dart';
import 'package:get/get.dart';
import '../../../controller/url_controller/url_controller.dart';
import '../../../global/constants/images.dart';
import '../../../global/widgets/custom_devider.dart';
import '../../widgets/bottom_copyrights.dart';
import '../data/feedback_data.dart';
import '../data/skills_data.dart';
import '../data/service_data.dart';
import '../widgets/feedback_card.dart';
import '../widgets/experience_card.dart';
import '/components/constants.dart';
import '/global/methods/sizebox_widget.dart';
import '/global/widgets/global_text.dart';
import '/screens/settings/theme/controller/theme_controller.dart';
import 'components/onsite_job_timeline_widget.dart';
import 'components/skill_name_card_widget.dart';
import 'service/service_card.dart';
import 'components/card_title_widget.dart';
import 'skills/skills_card.dart';

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
            return CustomisedScaffold(
              mainScaffold: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding * 2,
                  horizontal: kDefaultPadding * 7,
                ),
                constraints: const BoxConstraints(maxWidth: 1110),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CardTitleWidget(
                      title: "Work Experience",
                      subTitle: "My Onsite Work Experience",
                    ),
                    const SizedBox(height: kDefaultPadding * 3),

                    ///

                    GlobalText(
                      str: 'My Onsite Jobs: ',
                      fontSize: 30,
                    ),

                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 800,
                              child: ExperienceTimelineWidget(
                                experienceList: [
                                  WorkExperienceClass(
                                    id: 0,
                                    position: "Mobile App Developer",
                                    companyName: "TCSENS SDN. BHD.",
                                    contactNumber: "+60 16-330 1328",
                                    toFrom: "08/2023 - Running",
                                    companyType: "Software Solutions and iOT Based Company",
                                    companyImage: Images.weHealthLogo,
                                    roles: [
                                      "A native app developer using Android Studio with Java & Kotlin",
                                      "Native app bug fixer & features adder",
                                      "Native app converter to Flutter",
                                      "Backend API implementation both native & flutter",
                                      "Firebase implementation",
                                      "App publisher in Google Play Store and Huawei AppGallery",
                                    ],
                                  ),
                                  WorkExperienceClass(
                                    id: 1,
                                    position: "Mobile App Developer",
                                    companyName: "UMCH Tech SDN. BHD.",
                                    contactNumber: "+60 16-330 1328",
                                    toFrom: "09/2022 - 08/2023",
                                    companyType: "Medical & Health Care Software Solutions Based Comapny",
                                    companyImage: Images.weHealthLogo,
                                    roles: [
                                      "A native app developer using Android Studio with Java & Kotlin",
                                      "Native app bug fixer & features adder",
                                      "Native app converter to Flutter",
                                      "Backend API implementation both native & flutter",
                                      "Firebase implementation",
                                      "App publisher in Google Play Store and Huawei AppGallery",
                                    ],
                                  ),
                                  WorkExperienceClass(
                                    id: 2,
                                    position: "Mobile App Developer",
                                    companyName: "Biz Trading & Total Cad Solution SDN. BHD.",
                                    contactNumber: "+60 11 397909129",
                                    toFrom: "09/2021 - 02/2022",
                                    companyType: "Mechemical & Software Based Company",
                                    companyImage: Images.bizTradingLogo,
                                    roles: [
                                      "A trainer of flutter development",
                                      "Lead of development mobile and web",
                                      "Implement design from prototype",
                                      "Backend API implementation",
                                      "Firebase implementation",
                                      "App publisher in Google Play Store and App Store",
                                    ],
                                  ),
                                  WorkExperienceClass(
                                    id: 3,
                                    position: "Mobile App Developer",
                                    companyName: "DeltaFrontier SDN. BHD.",
                                    contactNumber: "+65 9825 6483",
                                    toFrom: "09/2021 - 02/2022",
                                    companyType: "AI & IOT Based Company",
                                    companyImage: Images.dfLogo,
                                    roles: [
                                      "Native android & Flutter developer",
                                      "Implement design from prototype",
                                      "Testing APIs with postman",
                                      "Implement Back-end (APIs Implement)",
                                      "Application version control (GitHub)",
                                      "Worked on remote database Nginx (Linux Server)",
                                      "Firebase implementation",
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                sizedBoxH(20),
                                const ExperienceCard(numOfExp: "05"),
                                sizedBoxH(20),
                                GlobalText(
                                  str:
                                      '''From 2016 I have started to learning mobile app development and very beginnning I was a native app developer using Android studio with Java. Professionally I have started my journey from 2018 full time part time and sometimes contract based jobs. And now it's 5 years ovaerall experices I have,
                    I am working on Mobile, Web, Windows & macOS application development. For development, I am using the flutter, a single code base design framework. For the backedn using NodeJS. I am willing to learn from other's and a quick self learner too. ''',
                                  fontSize: 18,
                                ),
                              ],
                            ))
                          ],
                        ),
                      ],
                    ),
                    //
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

                    ///
                    BottomCopyRights(),
                  ],
                ),
              ),

              ///
            );
          },
        );
      },
    );
  }
}
