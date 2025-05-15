import 'package:flutter/material.dart';
import 'package:portfolio/screens/widgets/customised_scaffold.dart';
import '../../components/constants.dart';
import '../../global/methods/custom_url_launcher.dart';
import '../../global/widgets/global_text.dart';
import 'components/hireme_card.dart';
import '../../components/section_title.dart';
import 'data/project_data.dart';

class MoreProjects extends StatefulWidget {
  const MoreProjects({super.key});

  @override
  State<MoreProjects> createState() => _MoreProjectsState();
}

class _MoreProjectsState extends State<MoreProjects> {
  bool isHover = false;

  ///
  @override
  Widget build(BuildContext context) {
    return CustomisedScaffold(
      // isStack: true,
      webScaffold: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
          constraints: BoxConstraints(maxWidth: 1640.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SectionTitle(
                title: "My Projects",
                subTitle: "Some of My Recent Works ",
                color: Color(0xFFFFB100),
              ),
              Transform.translate(offset: const Offset(0, 0), child: const HireMeCard()),
              const SizedBox(height: kDefaultPadding * 1.5),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GlobalText(
                    str: '''
Major Projects
From the beginning of my professional career, I have been involved in developing management-type applications, based on both company responsibilities and client requirements.
Through these projects, I’ve gained a solid foundation in the Flutter application development process. As a result, handling any kind of Flutter project has become much easier for me, and I am confident in my ability to deliver high-quality solutions.
                ''',
                  ),
                ),
              ),

              const SizedBox(height: kDefaultPadding * 1.5),
              SizedBox(
                height: 2600,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 4 / 2,
                  ),
                  itemCount: projectList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = projectList[index];
                    return InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          isHover = value;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        height: 320,
                        width: 540,
                        decoration: BoxDecoration(
                          color: const Color(0x4A3E3C7E),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [if (isHover) kDefaultCardShadow],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
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
                                      fontSize: 24.0,
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    const SizedBox(height: kDefaultPadding / 2),
                                    GlobalText(
                                      str: data.desciption,
                                      overflow: TextOverflow.clip,
                                      maxLines: 5,
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
                                                      Image.asset(
                                                        platform?.icon ?? "",
                                                        width: 20.0,
                                                      ),
                                                      SizedBox(width: 5.0),
                                                      GestureDetector(
                                                        onTap: () {
                                                          launchUrlNow(platform?.url ?? "");
                                                        },
                                                        child: GlobalText(
                                                          str: platform?.name ?? "",
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          }).toList(),
                                    ),

                                    ///
                                    SizedBox(height: 6.0),
                                    SizedBox(
                                      width: 160,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Row(
                                          children: [
                                            Icon(Icons.video_camera_back_outlined),
                                            SizedBox(width: 5.0),
                                            GlobalText(str: 'Watch Demo'),
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

              const SizedBox(height: kDefaultPadding * 2),

              ///
            ],
          ),
        ),
      ),
      tabletScaffold: Card(),
      mobileScaffold: Card(),
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
