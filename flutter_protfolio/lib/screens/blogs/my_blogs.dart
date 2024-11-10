import 'package:flutter/material.dart';
import 'package:flutter_portfolio/global/widgets/global_text.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../components/constants.dart';
import '../../components/section_title.dart';
import '../../controller/blog_post_controller.dart';
import '../../global/methods/sizebox_widget.dart';
import '../projects/projects_screen.dart';

class MyBlogsScreen extends StatefulWidget {
  const MyBlogsScreen({super.key});

  @override
  State<MyBlogsScreen> createState() => _MyBlogsScreenState();
}

class _MyBlogsScreenState extends State<MyBlogsScreen> {
   @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogPostController>(
      builder: (getAllPostController) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFF7E8FF).withOpacity(0.3),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/recent_work_bg.png"),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SectionTitle(
                    title: "Project",
                    subTitle: "Some of My Recent Projects ",
                    color: Color(0xFFFFB100),
                  ),
                  const SizedBox(height: kDefaultPadding * 1.5),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Column(
                              children: [
                                ProjectCard(
                                  image:
                                      "https://images.unsplash.com/photo-1672858780267-7deecb33b131?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
                                  androidLink:
                                      "https://play.google.com/store/apps/details?id=connected.healthcare.checkupasia",
                                  iosLink: "",
                                  name: "WeHealth",
                                  desc: "WeHealth is a simple and convenient popular health monitoring App.",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  sizedBoxH(10),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String image;
  final String androidLink;
  final String iosLink;
  final String name;
  final String desc;

  const ProjectCard({
    super.key,
    required this.image,
    required this.androidLink,
    required this.iosLink,
    required this.name,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade900,
      height: 320,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            width: 250,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: GlobalText(
                    str: name,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: kDefaultPadding / 2),
                Flexible(
                  flex: 3,
                  child: GlobalText(
                    str: desc,
                    maxLines: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: kDefaultPadding),

                ///
                Spacer(),
                Row(
                  children: [
                    HoverChip(
                      label: "iOS",
                      onTap: () {},
                    ),
                    const SizedBox(width: 6),
                    HoverChip(
                      label: "Android",
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HoverChip extends StatefulWidget {
  const HoverChip({
    super.key,
    required this.onTap,
    required this.label,
  });
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
        backgroundColor: Colors.blue.shade50,
        elevation: _onHover ? 10 : 0,
        label: Text(
          widget.label,
        ),
      ),
    );
  }
}
