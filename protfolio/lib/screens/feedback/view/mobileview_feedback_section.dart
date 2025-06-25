import 'package:flutter/material.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/components/constants.dart';

import '../data/feedback_data.dart';

class MobileViewFeedbackSection extends StatefulWidget {
  const MobileViewFeedbackSection({super.key});

  @override
  State<MobileViewFeedbackSection> createState() => _MobileViewFeedbackSectionState();
}

class _MobileViewFeedbackSectionState extends State<MobileViewFeedbackSection> {
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
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const SectionTitle(
            title: "Feedback Received",
            subTitle: "Client’s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          const SizedBox(height: kDefaultPadding),
          SizedBox(
            height: 300,
            child: RawScrollbar(
              controller: _scrollController,
              // thumbVisibility: true,
              // trackVisibility: true,
              thumbColor: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ListView.builder(
                  // padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                        margin: const EdgeInsets.only(top: kDefaultPadding, right: 10.0),
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        height: 400,
                        width: 280,
                        decoration: BoxDecoration(
                          color: feedback.color,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [if (isHover) kDefaultCardShadow],
                        ),
                        child: Column(
                          children: [
                            Transform.translate(
                              offset: const Offset(0, -15),
                              child: AnimatedContainer(
                                duration: duration,
                                height: 80.0,
                                width: 80.0,
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
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic,
                                height: 1.2,
                              ),
                            ),
                            // const SizedBox(height: kDefaultPadding),
                            Spacer(),
                            Text(
                              feedback.name ?? '',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
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
