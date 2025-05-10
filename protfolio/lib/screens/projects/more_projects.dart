import 'package:flutter/material.dart';
import '../../components/constants.dart';
import 'components/hireme_card.dart';
import '../../components/section_title.dart';
import 'components/recent_work_card.dart';


class MoreProjects extends StatefulWidget {
  const MoreProjects({super.key});

  @override
  State<MoreProjects> createState() => _MoreProjectsState();
}

class _MoreProjectsState extends State<MoreProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: kDefaultPadding * 6),
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
              Transform.translate(
                offset: const Offset(0, -80),
                child: const HireMeCard(),
              ),
              const SectionTitle(
                title: "Recent Works",
                subTitle: "Some of My Recent Works ",
                color: Color(0xFFFFB100),
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              const SizedBox(
                width: 1110,
                child: Wrap(
                  spacing: kDefaultPadding,
                  runSpacing: kDefaultPadding * 2,
          
                  children:  [
                   
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding * 5),
            ],
          ),
        ),
      ),
    );
  }
}