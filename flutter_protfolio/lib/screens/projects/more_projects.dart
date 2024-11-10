import 'package:flutter/material.dart';
import '../../components/constants.dart';
import '../../components/hireme_card.dart';
import '../../components/section_title.dart';
import 'components/recent_work_card.dart';


class MoreProjects extends StatefulWidget {
  const MoreProjects({super.key});

  @override
  State<MoreProjects> createState() => _MoreProjectsState();
}

class _MoreProjectsState extends State<MoreProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: kDefaultPadding * 6),
          width: double.infinity,
          // just for demo
          // height: 600,
          decoration: BoxDecoration(
            color: const Color(0xFFF7E8FF).withOpacity(0.3),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/recent_work_bg.png"),
            ),
          ),
          child: Column(
            children: [
              Transform.translate(
                offset: const Offset(0, -80),
                child: const HireMeCard(),
              ),
              const SectionTitle(
                title: "Recent Works",
                subTitle: "Some of My Recent Works ",
                color: Color(0xFFFFB100),
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              const SizedBox(
                width: 1110,
                child: Wrap(
                  spacing: kDefaultPadding,
                  runSpacing: kDefaultPadding * 2,
          
                  children:  [
                    RecentWorkCard(
                      image: "assets/images/wehealthwebp.webp",
                      androidLink:
                          "https://play.google.com/store/apps/details?id=connected.healthcare.checkupasia",
                      iosLink: "",
                      name: "WeHealth",
                      desc:
                          "WeHealth is a simple and convenient popular health monitoring App.",
                    ),
                    RecentWorkCard(
                      image: "assets/images/etapwebp.webp",
                      androidLink:
                          "https://play.google.com/store/apps/details?id=emasa.paip.com.etap",
                      iosLink:
                          "https://apps.apple.com/dz/app/emasa-tap/id1606404194",
                      name: "eMASA-TAP",
                      desc:
                          "To ensure our vendors identity and safely entering to our office to collect their goods.",
                    ),
                    RecentWorkCard(
                      image: "assets/images/socookwebp.webp",
                      androidLink:
                          "https://play.google.com/store/apps/details?id=com.mowe.socook",
                      iosLink: "",
                      name: "SoCook",
                      desc:
                          "Simple and elegant recipe app. With premium features, a new recipe everyday.",
                    ),
                    RecentWorkCard(
                      image: "assets/images/olgawebp.webp",
                      androidLink:
                          "https://play.google.com/store/apps/details?id=com.cfpc.olga",
                      iosLink: "",
                      name: "Olga",
                      desc:
                          "A personalized program to help you harness the power of your inner expert’s profound intelligence.",
                    ),
                    RecentWorkCard(
                      image: "assets/images/forcarwebp.webp",
                      androidLink:
                          "https://play.google.com/store/apps/details?id=com.foorcar.user",
                      iosLink: "",
                      name: "ForCar",
                      desc:
                          "The first application in the Middle East that facilitates the search for spare parts.",
                    ),
                    RecentWorkCard(
                      image: "assets/images/bikrinaki.webp",
                      androidLink:
                          "https://play.google.com/store/apps/details?id=com.bikrinaki.userapp&hl=en&gl=US",
                      iosLink: "",
                      name: "BikriNaki",
                      desc:
                          "BikriNaki is a multi-vendor e-commerce system developed by flutter for support both iOS and Android.",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding * 5),
            ],
          ),
        ),
      ),
    );
  }
}