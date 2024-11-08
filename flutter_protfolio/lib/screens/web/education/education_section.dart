// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_portfolio/components/section_title.dart';
import 'package:flutter_portfolio/components/constants.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            color: Colors.purple,
            title: "Education History",
            subTitle: "My Educational Background",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: EducationCard(
                  record: EducationRecord(
                    degreeName:
                        "Bachelor of Science:\nComputer Science & Engineering".toUpperCase(),
                    institutionName: "UNIVERSITI TEKNOLOGI MALAYSIA",
                    toFrom: "2018 - 2022",
                    cgpa: "CGPA:  3.08",
                    imgLink: const AssetImage("assets/edu/utm.png"),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: EducationCard(
                  record: EducationRecord(
                    degreeName:
                        "Diploma in Engineering:\nComputer Science & Technology".toUpperCase(),
                    institutionName: "Feni Computer Institute".toUpperCase(),
                    toFrom: "2013-2017",
                    cgpa: "CGPA: 3.43",
                    imgLink: const AssetImage("assets/edu/fci.png"),
                    bgColor: Colors.cyan.shade50,
                  ),
                ),
              ),
            ],
          )
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
  const EducationCard({
    super.key,
    required this.record,
  });
  final EducationRecord record;
  @override
  _EducationCardState createState() => _EducationCardState();
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
        height: 280,
        width: 256,
        decoration: BoxDecoration(
          color: widget.record.bgColor ?? Colors.blue.shade50,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.only(bottom: kDefaultPadding, left: 8),
              child: CircleAvatar(
                radius: 35,
                foregroundImage: widget.record.imgLink,
              ),
            ),
            Text(
              widget.record.degreeName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: kDefaultPadding * 0.5),
            Text(
              widget.record.institutionName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: kDefaultPadding * 0.5),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.record.toFrom,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 32),
                Text(
                  widget.record.cgpa,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
