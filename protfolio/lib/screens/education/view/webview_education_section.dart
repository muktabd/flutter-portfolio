// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/global/widgets/global_text.dart';

import '../../../global/methods/custom_url_launcher.dart';

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
                    url: "https://www.utm.my/",
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
                    url: "https://www.utm.my/",
                    toFrom: "2013-2017",
                    cgpa: "CGPA: 3.43",
                    imgLink: const AssetImage("assets/edu/fci.png"),
                  ),
                ),
              ),
            ],
          ),

          ///
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: const Color(0x0A000000),
              child: Padding(
                padding: const EdgeInsets.all(55.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GlobalText(
                      str: "Top-up IT Training Mobile App Development",
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 20.0),
                    GlobalText(
                      str:
                          '''The training is on Android App Development .It is a project based training. The title was Top-up IT training conducted by Ernst & Young LLP,India under Leveraging ICT for Growth,Employment and Governance (LICT) Project of Bangladesh Computer Council (BCC),ICT Division,People's Republic of Bangladesh on Android under NASSCOM IT-ITES Sector Skill Council (SSC) Certification . The program is certified by George Washington University, USA''',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EducationRecord {
  final String degreeName;
  final String institutionName;
  final String url;
  final String toFrom;
  final String cgpa;
  final AssetImage imgLink;
  final Color? bgColor;

  EducationRecord({
    required this.degreeName,
    required this.institutionName,
    required this.url,
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
            Row(
              children: [
                GlobalText(
                  str: widget.record.institutionName,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepOrange,
                ),
                IconButton(
                  onPressed: () {
                    launchUrlNow(widget.record.url);
                  },
                  icon: Icon(Icons.open_in_new, color: Colors.blueGrey),
                ),
              ],
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
