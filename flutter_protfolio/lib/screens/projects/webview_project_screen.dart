import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/section_title.dart';
import 'package:flutter_portfolio/components/constants.dart';
import 'package:get/get.dart';
import '../../components/default_button.dart';
import 'components/hireme_card.dart';

import 'components/recent_work_card.dart';
import 'data/project_data.dart';
import 'more_projects.dart';

class WebViewProjectSection extends StatefulWidget {
  const WebViewProjectSection({super.key});

  @override
  State<WebViewProjectSection> createState() => _WebViewProjectSectionState();
}

class _WebViewProjectSectionState extends State<WebViewProjectSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
      constraints: BoxConstraints(maxWidth: 1640.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SectionTitle(title: "Recent Works", subTitle: "Some of My Recent Works ", color: Color(0xFFFFB100)),
          Transform.translate(offset: const Offset(0, 0), child: const HireMeCard()),
          const SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            height: 700,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 4 / 2,
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                final data = projectList[index];
                return RecentWorkCard(
                  image: data.icon,
                  name: data.title,
                  desc: data.desciption,
                  platfromList: data.platformName,
                );
              },
            ),
          ),

          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                child: DefaultButton(
                  imageSrc: "assets/images/icons8-sleepy-eyes-96.png",
                  text: "More Projects!",
                  onPress: () {
                    Get.to(() => MoreProjects());
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),

          ///
        ],
      ),
    );
  }
}
