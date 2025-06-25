import 'package:flutter/material.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/components/constants.dart';
import 'package:get/get.dart';

import '../../../components/default_button.dart';
import '../../../global/methods/custom_url_launcher.dart';
import '../../../global/widgets/global_text.dart';
import '../components/hireme_card.dart';
import '../data/project_data.dart';
import '../more_projects.dart';

class MobileViewProjectSection extends StatefulWidget {
  const MobileViewProjectSection({super.key});

  @override
  State<MobileViewProjectSection> createState() => _MobileViewProjectSectionState();
}

class _MobileViewProjectSectionState extends State<MobileViewProjectSection> {
  bool isHover = false;

  ///
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const SectionTitle(
            title: "Recent Works",
            subTitle: "Some of My Recent Works ",
            color: Color(0xFFFFB100),
          ),
          // Transform.translate(offset: const Offset(0, 0), child: const HireMeCard()),
          const SizedBox(height: kDefaultPadding),
          SizedBox(
            height: 730,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 4 / 2,
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                final data =
                    projectList.where((element) => element.featureProject == true).toList()[index];
                return InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isHover = value;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: 330,
                    width: 540,
                    decoration: BoxDecoration(
                      color: const Color(0x4A3E3C7E),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [if (isHover) kDefaultCardShadow],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          // flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(data.icon),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding,
                              vertical: kDefaultPadding,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GlobalText(
                                  str: data.title.toUpperCase(),
                                  maxLines: 1,
                                  fontSize: 20.0,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                ),
                                const SizedBox(height: kDefaultPadding / 2),
                                Flexible(
                                  child: GlobalText(
                                    str: data.desciption,
                                    overflow: TextOverflow.clip,
                                    maxLines: 5,
                                  ),
                                ),
                                const SizedBox(height: kDefaultPadding),

                                Row(
                                  children:
                                      (data.platformName ?? []).map((platform) {
                                        return Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 5.0,
                                              ),
                                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5.0),
                                                color: const Color(0x2D4489FF),
                                              ),
                                              child: Row(
                                                children: [
                                                  Image.asset(platform?.icon ?? "", width: 20.0),
                                                  SizedBox(width: 5.0),
                                                  GestureDetector(
                                                    onTap: () {
                                                      launchUrlNow(platform?.url ?? "");
                                                    },
                                                    child: GlobalText(str: platform?.name ?? ""),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      }).toList(),
                                ),

                                ///
                                SizedBox(height: 8.0),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    margin: const EdgeInsets.only(left: 5.0),
                                    decoration: BoxDecoration(
                                      color: const Color(0x2D4489FF),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        GlobalText(str: 'Watch Demo'),
                                        SizedBox(width: 5.0),
                                        Icon(Icons.video_camera_back_outlined),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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

class HoverChip extends StatefulWidget {
  const HoverChip({super.key, required this.onTap, required this.label});
  final VoidCallback onTap;
  final String label;

  @override
  State<HoverChip> createState() => _HoverChipState();
}

class _HoverChipState extends State<HoverChip> {
  bool _onHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (event) {
        setState(() {
          _onHover = event;
        });
      },
      onTap: widget.onTap,
      child: Chip(
        backgroundColor: Colors.blueGrey,
        elevation: _onHover ? 10 : 0,
        label: GlobalText(str: widget.label, color: Colors.white),
      ),
    );
  }
}
