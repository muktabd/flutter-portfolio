import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/default_button.dart';
import 'package:flutter_portfolio/components/my_outline_button.dart';
import 'package:flutter_portfolio/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              
              Text(
                "About \nMy Story",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const Expanded(
                child: AboutSectionText(
                  text:
                      "I am working on Mobile, Web, Windows & macOS application development. For development, I am using the flutter, a single code base design framework. For the backedn using NodeJS. I am willing to learn from other's and a quick self learner too.",
                ),
              ),
              const ExperienceCard(numOfExp: "05"),
              const Expanded(
                child: AboutSectionText(
                  text:
                      "From 2016 I have started to learning mobile app development and very beginnning I was a native app developer using Android studio with Java. Professionally I have started my journey from 2018 full time part time and sometimes contract based jobs. And now it's 5 years ovaerall experices I have",
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {
                //
                },
              ),
              const SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {
                //
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
