import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/default_button.dart';
import 'package:flutter_portfolio/components/section_title.dart';
import 'package:flutter_portfolio/components/constants.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../controller/blog_post_controller.dart';

class BlogSection extends StatelessWidget {
  const BlogSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogPostController>(
    builder: (getAllPostController) {
      return Container(
        // margin: const EdgeInsets.only(top: kDefaultPadding * 6),
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
    /*           Transform.translate(
              offset: const Offset(0, -80),
              child: const HireMeCard(),
            ), */
            const SectionTitle(
              title: "Blogs",
              subTitle: "Some of My Recent Blogs ",
              color: Color(0xFFFFB100),
            ),
            const SizedBox(height: kDefaultPadding * 1.5),
            SizedBox(
              width: 1110,
              height: 700,
              child: Column(
                children: [
                  Expanded(
                    child: Wrap(
                      spacing: kDefaultPadding,
                      runSpacing: kDefaultPadding * 2,
                      children: const [
                        BlogCard(
                          image:
                              "https://images.unsplash.com/photo-1672858780267-7deecb33b131?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
                          androidLink:
                              "https://play.google.com/store/apps/details?id=connected.healthcare.checkupasia",
                          iosLink: "",
                          name: "WeHealth",
                          desc:
                              "WeHealth is a simple and convenient popular health monitoring App.",
                        ),
                        BlogCard(
                          image:
                              "https://images.unsplash.com/photo-1672266908996-3f0f73c49954?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2MzZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                          androidLink:
                              "https://play.google.com/store/apps/details?id=emasa.paip.com.etap",
                          iosLink:
                              "https://apps.apple.com/dz/app/emasa-tap/id1606404194",
                          name: "eMASA-TAP",
                          desc:
                              "To ensure our vendors identity and safely entering to our office to collect their goods.",
                        ),
                        BlogCard(
                          image:
                              "https://images.unsplash.com/photo-1672167469271-c822bf61992b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2OTh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                          androidLink:
                              "https://play.google.com/store/apps/details?id=com.cfpc.olga",
                          iosLink: "",
                          name: "Olga",
                          desc:
                              "A personalized program to help you harness the power of your inner expert’s profound intelligence.",
                        ),
                        BlogCard(
                          image:
                              "https://images.unsplash.com/photo-1671933800148-3d5c295e0eed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5MTh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                          androidLink:
                              "https://play.google.com/store/apps/details?id=com.foorcar.user",
                          iosLink: "",
                          name: "ForCar",
                          desc:
                              "The first application in the Middle East that facilitates the search for spare parts.",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 1110,
              child: Row(
                children: [
                  const Expanded(
                    flex: 8,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FittedBox(
                        child: DefaultButton(
                            imageSrc: "assets/images/icons8-sleepy-eyes-96.png",
                            text: "See More!",
                            press: () async {
                             await getAllPostController.getAllBlogPosts();

                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const AllBlogsScreen(),
                              //   ),
                              // );
                            }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: kDefaultPadding),
          ],
        ),
      );
      }
    );
  }
}

class BlogCard extends StatefulWidget {
  // just press "Command + ."
  const BlogCard({
    super.key,
    required this.image,
    required this.androidLink,
    required this.iosLink,
    required this.name,
    required this.desc,
  });

  final String image;
  final String androidLink;
  final String iosLink;
  final String name;
  final String desc;

  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  bool isHover = false;

  launcLinkhUrl(String url) async {
/*     if (!await launchUrl(
      Uri.parse(url),
    )) {
      throw 'Could not launch $url';
    } */
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: 540,
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox.expand(
                    child: Image.network(
                  widget.image,
                  fit: BoxFit.cover,
                )),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding, vertical: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          widget.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding / 2),
                      Flexible(
                        flex: 3,
                        child: Text(
                          widget.desc,
                          softWrap: true,
                          maxLines: 12,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle()
                        ),
                      ),
                      /*  const SizedBox(height: kDefaultPadding),
                      Row(
                        children: [
                          HoverChip(
                            label: "iOS",
                            onTap: () => launcLinkhUrl(widget.iosLink),
                          ),
                          const SizedBox(width: 6),
                          HoverChip(
                            label: "Android",
                            onTap: () => launcLinkhUrl(widget.androidLink),
                          ),
                        ],
                      ), */
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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

          /* style:
              TextStyle(decoration: TextDecoration.underline), */
        ),
      ),
    );
  }
}
