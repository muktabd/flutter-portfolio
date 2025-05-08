import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/section_title.dart';
import 'package:flutter_portfolio/components/constants.dart';

import '../experiences/data/feedback_data.dart';
import 'components/feedback_card.dart';

class WebViewFeedbackSection extends StatefulWidget {
  const WebViewFeedbackSection({super.key});

  @override
  State<WebViewFeedbackSection> createState() => _WebViewFeedbackSectionState();
}

class _WebViewFeedbackSectionState extends State<WebViewFeedbackSection> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            title: "Feedback Received",
            subTitle: "Client’s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          const SizedBox(height: kDefaultPadding),
          SizedBox(
            height: 550,
            child: RawScrollbar(
              controller: _scrollController,
              // thumbVisibility: true,
              // trackVisibility: true,
              thumbColor: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListView.builder(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: feedbacks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FeedbackCard(index: index);
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
