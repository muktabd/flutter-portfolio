import 'package:flutter/material.dart';
import 'package:portfolio/global/widgets/global_text.dart';

import '../../../components/constants.dart';
import '../../../components/default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      // constraints: const BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: const Color(0x412C2C6F),
        border: Border.all(width: 1.0, color: Colors.deepOrange),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
          Image.asset("assets/images/email.png", height: 80, width: 80),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(height: 80, child: VerticalDivider()),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                GlobalText(str: "Starting New Project?", fontSize: 42, fontWeight: FontWeight.bold),
                SizedBox(height: kDefaultPadding / 2),
                GlobalText(str: "Get an estimate for the new project", fontWeight: FontWeight.w200),
              ],
            ),
          ),
          DefaultButton(text: "Hire Me!", color: Colors.deepOrange, imageSrc: "assets/images/hand.png", onPress: () {}),
        ],
      ),
    );
  }
}
