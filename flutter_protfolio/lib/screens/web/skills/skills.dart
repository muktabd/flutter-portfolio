import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../../../models/skills.dart';
import 'skills_section_title.dart';
import 'skills_card.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      width: MediaQuery.of(context).size.width,

      // just for demo
      // height: 600,
      decoration: BoxDecoration(
        color: Colors.white70.withOpacity(0.2),
        image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/skill.webp"),
            opacity: 0.1),
      ),

      child: Container(
        margin: const EdgeInsets.symmetric(
            vertical: kDefaultPadding * 2, horizontal: kDefaultPadding * 7),
        constraints: const BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            const SkillSectionTitle(
              color: Color(0xFF000000),
              title: "My Skills",
              subTitle: "My Major Skills",
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: const TextSpan(
                  text: "Full Stack Developer using Flutter & NodeJS",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "\nNative app developer using Android Studio with Java & Kotlin",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                skills.length,
                (index) => SkillsCard(index: index),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: customCard("FIGMA"),
                ),
                const SizedBox(width: 15),
                Expanded(child: customCard("POSTMAN")),
                const SizedBox(width: 15),
                Expanded(child: customCard("FIREBASE")),
                const SizedBox(width: 15),
                Expanded(child: customCard("VS CODE")),
                const SizedBox(width: 15),
                Expanded(child: customCard("XCODE")),
                const SizedBox(width: 15),
                Expanded(child: customCard("GIIHUB")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget customCard(String name) {
  return Card(
    color: Colors.blueGrey.shade200,
    child: SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            name,
            style: const TextStyle(color: Colors.redAccent),
          ),
        ),
      ),
    ),
  );
}
