import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/section_title.dart';
import 'package:flutter_portfolio/components/constants.dart';
import 'package:flutter_portfolio/global/methods/sizebox_widget.dart';
import 'package:flutter_portfolio/screens/widgets/customised_scaffold.dart';
import 'package:get/get.dart';
import '../../components/default_button.dart';
import '../../components/hireme_card.dart';
import '../widgets/bottom_copyrights.dart';
import 'components/recent_work_card.dart';
import 'more_projects.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return CustomisedScaffold(
      isStack: true,
      webScaffold: RecentProjectsSection(),
      tabletScaffold: Card(),
      mobileScaffold: Card(),
    );
  }
}

class RecentProjectsSection extends StatefulWidget {
  const RecentProjectsSection({super.key});

  @override
  State<RecentProjectsSection> createState() => _RecentProjectsSectionState();
}

class _RecentProjectsSectionState extends State<RecentProjectsSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
        child: Column(
          children: [
            const SectionTitle(
              title: "Recent Works",
              subTitle: "Some of My Recent Works ",
              color: Color(0xFFFFB100),
            ),
            Transform.translate(
              offset: const Offset(0, 0),
              child: const HireMeCard(),
            ),
            const SizedBox(height: kDefaultPadding * 1.5),
            // Row(
            //   children: [
            //     RecentWorkCard(
            //       image: "assets/images/wehealthwebp.webp",
            //       androidLink: "https://play.google.com/store/apps/details?id=connected.healthcare.checkupasia",
            //       iosLink: "",
            //       name: "WeHealth",
            //       desc: "WeHealth is a simple and convenient popular health monitoring App.",
            //     ),
            //     sizedBoxW(20.0),
            //     RecentWorkCard(
            //       image: "assets/images/etapwebp.webp",
            //       androidLink: "https://play.google.com/store/apps/details?id=emasa.paip.com.etap",
            //       iosLink: "https://apps.apple.com/dz/app/emasa-tap/id1606404194",
            //       name: "eMASA-TAP",
            //       desc: "To ensure our vendors identity and safely entering to our office to collect their goods.",
            //     ),
            //   ],
            // ),
            // sizedBoxH(20.0),
            // Row(
            //   children: [
            //     RecentWorkCard(
            //       image: "assets/images/socookwebp.webp",
            //       androidLink: "https://play.google.com/store/apps/details?id=com.mowe.socook",
            //       iosLink: "",
            //       name: "SoCook",
            //       desc: "Simple and elegant recipe app. With premium features, a new recipe everyday.",
            //     ),
            //     sizedBoxW(20.0),
            //     RecentWorkCard(
            //       image: "assets/images/olgawebp.webp",
            //       androidLink: "https://play.google.com/store/apps/details?id=com.cfpc.olga",
            //       iosLink: "",
            //       name: "Olga",
            //       desc:
            //           "A personalized program to help you harness the power of your inner expert’s profound intelligence.",
            //     ),
            //   ],
            // ),
            Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: const [
                RecentWorkCard(
                  image: "assets/images/wehealthwebp.webp",
                  androidLink: "https://play.google.com/store/apps/details?id=connected.healthcare.checkupasia",
                  iosLink: "",
                  name: "WeHealth",
                  desc: "WeHealth is a simple and convenient popular health monitoring App.",
                ),
                RecentWorkCard(
                  image: "assets/images/etapwebp.webp",
                  androidLink: "https://play.google.com/store/apps/details?id=emasa.paip.com.etap",
                  iosLink: "https://apps.apple.com/dz/app/emasa-tap/id1606404194",
                  name: "eMASA-TAP",
                  desc: "To ensure our vendors identity and safely entering to our office to collect their goods.",
                ),
                RecentWorkCard(
                  image: "assets/images/socookwebp.webp",
                  androidLink: "https://play.google.com/store/apps/details?id=com.mowe.socook",
                  iosLink: "",
                  name: "SoCook",
                  desc: "Simple and elegant recipe app. With premium features, a new recipe everyday.",
                ),
                RecentWorkCard(
                  image: "assets/images/olgawebp.webp",
                  androidLink: "https://play.google.com/store/apps/details?id=com.cfpc.olga",
                  iosLink: "",
                  name: "Olga",
                  desc:
                      "A personalized program to help you harness the power of your inner expert’s profound intelligence.",
                ),
                RecentWorkCard(
                  image: "assets/images/forcarwebp.webp",
                  androidLink: "https://play.google.com/store/apps/details?id=com.foorcar.user",
                  iosLink: "",
                  name: "ForCar",
                  desc: "The first application in the Middle East that facilitates the search for spare parts.",
                ),
                RecentWorkCard(
                  image: "assets/images/bikrinaki.webp",
                  androidLink: "https://play.google.com/store/apps/details?id=com.bikrinaki.userapp&hl=en&gl=US",
                  iosLink: "",
                  name: "BikriNaki",
                  desc:
                      "BikriNaki is a multi-vendor e-commerce system developed by flutter for support both iOS and Android.",
                ),
              ],
            ),
            Align(
              // alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                  child: DefaultButton(
                    imageSrc: "assets/images/icons8-sleepy-eyes-96.png",
                    text: "More Projects!",
                    press: () {
                      Get.to(() => MoreProjects());
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: kDefaultPadding * 5),

            ///
            BottomCopyRights(),
          ],
        ),
      ),
    );
  }
}
