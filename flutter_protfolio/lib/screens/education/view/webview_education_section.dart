// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_portfolio/components/section_title.dart';
import 'package:flutter_portfolio/components/constants.dart';
import 'package:flutter_portfolio/global/widgets/global_text.dart';

class WebViewEducationSection extends StatelessWidget {
  const WebViewEducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
      constraints: BoxConstraints(maxWidth: 1640.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SectionTitle(color: Colors.green, title: "Education History", subTitle: "My Educational Background"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: EducationCard(
                  record: EducationRecord(
                    degreeName: "Bachelor of Science:\nComputer Science & Engineering".toUpperCase(),
                    institutionName: "UNIVERSITI TEKNOLOGI MALAYSIA",
                    toFrom: "2018 - 2022",
                    cgpa: "CGPA:  3.08",
                    imgLink: const AssetImage("assets/edu/utm.png"),
                  ),
                ),
              ),
              const SizedBox(width: 15.0),
              Expanded(
                child: EducationCard(
                  record: EducationRecord(
                    degreeName: "Diploma in Engineering:\nComputer Science & Technology".toUpperCase(),
                    institutionName: "Feni Computer Institute".toUpperCase(),
                    toFrom: "2013-2017",
                    cgpa: "CGPA: 3.43",
                    imgLink: const AssetImage("assets/edu/fci.png"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EducationRecord {
  final String degreeName;
  final String institutionName;
  final String toFrom;
  final String cgpa;
  final AssetImage imgLink;
  final Color? bgColor;

  EducationRecord({
    required this.degreeName,
    required this.institutionName,
    required this.toFrom,
    required this.cgpa,
    required this.imgLink,
    this.bgColor,
  });
}

class EducationCard extends StatefulWidget {
  const EducationCard({super.key, required this.record});
  final EducationRecord record;
  @override
  State<EducationCard> createState() => _EducationCardState();
}

class _EducationCardState extends State<EducationCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        padding: const EdgeInsets.all(kDefaultPadding * 1.5),
        height: 380,
        width: 256,
        decoration: BoxDecoration(
          color: widget.record.bgColor ?? const Color(0x14000000),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: kDefaultPadding, left: 8),
              child: CircleAvatar(radius: 70, foregroundImage: widget.record.imgLink),
            ),
            GlobalText(
              str: widget.record.degreeName,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
            const SizedBox(height: kDefaultPadding * 0.5),
            GlobalText(
              str: widget.record.institutionName,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white60,
            ),
            const SizedBox(height: kDefaultPadding * 0.5),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GlobalText(str: widget.record.toFrom, fontSize: 16, color: Colors.white70),
                const SizedBox(width: 32),
                GlobalText(str: widget.record.cgpa, fontSize: 16, color: Colors.white70),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
