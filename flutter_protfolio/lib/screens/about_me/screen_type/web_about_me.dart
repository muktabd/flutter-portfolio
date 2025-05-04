import 'package:flutter/material.dart';

import '../../experiences/view/components/card_title_widget.dart';

class WebAboutMeSection extends StatefulWidget {
  const WebAboutMeSection({super.key});

  @override
  State<WebAboutMeSection> createState() => _WebAboutMeSectionState();
}

class _WebAboutMeSectionState extends State<WebAboutMeSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
      child: Column(
        children: [
          const CardTitleWidget(
            title: "About Me",
            subTitle: "Let me tell you about myself",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      "About Me",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "About Me",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      "About Me",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "About Me",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
