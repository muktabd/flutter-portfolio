// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/components/constants.dart';
import 'package:portfolio/global/widgets/global_text.dart';

import '../../../global/methods/custom_url_launcher.dart';

import '../data/edu_data.dart';

class MobileViewEducationSection extends StatefulWidget {
  const MobileViewEducationSection({super.key});

  @override
  State<MobileViewEducationSection> createState() => _MobileViewEducationSectionState();
}

class _MobileViewEducationSectionState extends State<MobileViewEducationSection> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const SectionTitle(
            color: Colors.green,
            title: "Education History",
            subTitle: "My Educational Background",
          ),
          SizedBox(
            height: 720.0,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                // childAspectRatio: 2 / 4,
              ),
              itemCount: eduRecords.length,
              itemBuilder: (BuildContext context, int index) {
                final record = eduRecords[index];
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
                    // margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 1.5),
                    padding: const EdgeInsets.all(kDefaultPadding * 1.2),

                    decoration: BoxDecoration(
                      color: record.bgColor ?? const Color(0x14000000),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [if (isHover) kDefaultCardShadow],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Image.asset(
                            record.logo,
                            width: MediaQuery.of(context).size.width,
                            height: 180.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const SizedBox(height: 15.0),

                        GlobalText(
                          str: record.degreeName,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        GlobalText(
                          str: record.courseName,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),

                        Row(
                          children: [
                            Flexible(
                              child: GlobalText(
                                str: record.institutionName.toUpperCase(),
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.deepOrange,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                launchUrlNow(record.url);
                              },
                              icon: Icon(Icons.open_in_new, color: Colors.blueGrey),
                            ),
                          ],
                        ),
                        const SizedBox(height: kDefaultPadding * 0.5),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GlobalText(str: record.toFrom, fontSize: 16.0, color: Colors.white70),
                            const SizedBox(width: 32),
                            GlobalText(str: record.cgpa, fontSize: 16.0, color: Colors.white70),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: const Color(0x14000000),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [kDefaultCardShadow],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GlobalText(
                  str: 'Top-up IT Training Mobile App Development'.toUpperCase(),
                  fontSize: 20.0,
                  color: Colors.deepOrange,
                ),
                SizedBox(height: 10.0),
                GlobalText(str: des),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final String des =
    '''The training is on Android App Development .It is a project based training. The title was Top-up IT training conducted by Ernst & Young LLP,India under Leveraging ICT for Growth,Employment and Governance (LICT) Project of Bangladesh Computer Council (BCC),ICT Division,People's Republic of Bangladesh on Android under NASSCOM IT-ITES Sector Skill Council (SSC) Certification . The Program is certified by George Washington University ,USA ''';
