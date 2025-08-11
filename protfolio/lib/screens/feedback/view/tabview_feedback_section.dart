import 'package:flutter/material.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/components/constants.dart';

import './../data/feedback_data.dart';

class TabViewFeedbackSection extends StatefulWidget {
  const TabViewFeedbackSection({super.key});

  @override
  State<TabViewFeedbackSection> createState() => _TabViewFeedbackSectionState();
}

class _TabViewFeedbackSectionState extends State<TabViewFeedbackSection> {
  final ScrollController _scrollController = ScrollController();
  Duration duration = const Duration(milliseconds: 200);
  bool isHover = false;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
      constraints: BoxConstraints(maxWidth: 1640.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SectionTitle(
            title: "Feedback Received",
            subTitle: "Client’s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          const SizedBox(height: kDefaultPadding),
          SizedBox(
            height: 500,
            child: RawScrollbar(
              controller: _scrollController,
              // thumbVisibility: true,
              // trackVisibility: true,
              thumbColor: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ListView.builder(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: feedbacks.length,
                  itemBuilder: (BuildContext context, int index) {
                    final feedback = feedbacks[index];
                    return InkWell(
                      onTap: () {},
                      hoverColor: Colors.transparent,
                      onHover: (value) {
                        setState(() {
                          isHover = value;
                        });
                      },
                      child: AnimatedContainer(
                        duration: duration,
                        margin: const EdgeInsets.only(top: kDefaultPadding * 3, left: 10.0),
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        height: 420,
                        width: 350,
                        decoration: BoxDecoration(
                          color: feedback.color,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [if (isHover) kDefaultCardShadow],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Transform.translate(
                                offset: const Offset(0, -55),
                                child: AnimatedContainer(
                                  duration: duration,
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white, width: 10),
                                    boxShadow: [if (!isHover) kDefaultCardShadow],
                                    image: DecorationImage(image: AssetImage(feedback.userPic!)),
                                  ),
                                ),
                              ),
                              Text(
                                feedback.review ?? "",
                                style: const TextStyle(
                                  // color: kTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.italic,
                                  height: 1.5,
                                ),
                              ),
                              const SizedBox(height: kDefaultPadding * 2),
                              Spacer(),
                              Text(
                                feedback.name ?? '',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
