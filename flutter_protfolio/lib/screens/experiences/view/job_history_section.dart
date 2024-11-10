import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import '../../../global/constants/images.dart';
import '/components/section_title.dart';
import '/components/constants.dart';

class JobHistorySection extends StatefulWidget {
  const JobHistorySection({super.key});

  @override
  State<JobHistorySection> createState() => _JobHistorySectionState();
}

class _JobHistorySectionState extends State<JobHistorySection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: kDefaultPadding * 2),
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/work_exp1.jpeg"),
          opacity: 0.1,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding),
          SizedBox(
            width: 800,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ExperienceTimelineWidget(experienceList: [
                WorkExperienceClass(
                  id: 1,
                  position: "Mobile App Developer",
                  companyName: "UMCH Tech SDN. BHD.",
                  contactNumber: "+60 16-330 1328",
                  toFrom: "09/2022 - Running",
                  companyType: "Medical & Health Care Software Solutions Based Comapny",
                  companyImage: Images.weHealthLogo,
                  roles: [
                    "A native app developer using Android Studio with Java & Kotlin",
                    "Native app bug fixer & features adder",
                    "Native app converter to Flutter",
                    "Backend API implementation both native & flutter",
                    "Firebase implementation",
                    "App publisher in Google Play Store and Huawei AppGallery",
                  ],
                ),
                WorkExperienceClass(
                  id: 2,
                  position: "Mobile App Developer",
                  companyName: "Biz Trading & Total Cad Solution SDN. BHD.",
                  contactNumber: "+60 11 397909129",
                  toFrom: "09/2021 - 02/2022",
                  companyType: "Mechemical & Software Based Company",
                  companyImage: Images.bizTradingLogo,
                  roles: [
                    "A trainer of flutter development",
                    "Lead of development mobile and web",
                    "Implement design from prototype",
                    "Backend API implementation",
                    "Firebase implementation",
                    "App publisher in Google Play Store and App Store",
                  ],
                ),
                WorkExperienceClass(
                  id: 3,
                  position: "Mobile App Developer",
                  companyName: "DeltaFrontier SDN. BHD.",
                  contactNumber: "+65 9825 6483",
                  toFrom: "09/2021 - 02/2022",
                  companyType: "AI & IOT Based Company",
                  companyImage: Images.dfLogo,
                  roles: [
                    "Native android & Flutter developer",
                    "Implement design from prototype",
                    "Testing APIs with postman",
                    "Implement Back-end (APIs Implement)",
                    "Application version control (GitHub)",
                    "Worked on remote database Nginx (Linux Server)",
                    "Firebase implementation",
                  ],
                ),
              ]),
            ),
          ),
          //SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}

class ExperienceTimelineWidget extends StatelessWidget {
  const ExperienceTimelineWidget({super.key, required this.experienceList});

  final List<WorkExperienceClass> experienceList;
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Color(0xff9b9b9b),
        fontSize: 12.5,
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 120),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: FixedTimeline.tileBuilder(
            theme: TimelineThemeData(
              nodePosition: 0,
              color: const Color(0xff989898),
              indicatorTheme: const IndicatorThemeData(
                position: 0,
                size: 20.0,
              ),
              connectorTheme: const ConnectorThemeData(
                thickness: 2.5,
              ),
            ),
            builder: TimelineTileBuilder.connected(
              connectionDirection: ConnectionDirection.before,
              itemCount: experienceList.length,
              contentsBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 40),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            experienceList[index].position,
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            experienceList[index].companyName,
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                          ),
                          Text(
                            "Contact: ${experienceList[index].contactNumber}",
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  fontSize: 18.0,
                                ),
                          ),
                          Text(
                            experienceList[index].toFrom,
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            experienceList[index].companyType,
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          RolesListCreator(roles: experienceList[index].roles),
                        ],
                      ),
                    ),
                  ),
                );
              },
              indicatorBuilder: (_, index) {
                return Indicator.widget(
                  position: 0,
                  size: 64,
                  child: CircleAvatar(
                    radius: 32,
                    foregroundImage: AssetImage(experienceList[index].companyImage),
                  ),
                );
              },
              connectorBuilder: (_, index, __) => const SolidLineConnector(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RolesListCreator extends StatelessWidget {
  const RolesListCreator({
    super.key,
    required this.roles,
  });

  final List<String> roles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: FixedTimeline.tileBuilder(
        theme: TimelineTheme.of(context).copyWith(
          nodePosition: 0,
          connectorTheme: TimelineTheme.of(context).connectorTheme.copyWith(
                thickness: 1.0,
              ),
          indicatorTheme: TimelineTheme.of(context).indicatorTheme.copyWith(
                size: 10.0,
                position: 0.5,
                color: Colors.black,
              ),
        ),
        builder: TimelineTileBuilder(
          indicatorBuilder: (_, index) => DotIndicator(
            color: Colors.grey.shade800,
          ),
          contentsBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: roles
                  .map(
                    (roleText) => Text(
                      roleText,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  )
                  .toList()[index],
            );
          },
          itemExtentBuilder: (_, index) => 25.0,
          itemCount: roles.length,
        ),
      ),
    );
  }
}

class WorkExperienceClass {
  const WorkExperienceClass({
    required this.id,
    required this.position,
    required this.companyName,
    required this.contactNumber,
    required this.toFrom,
    required this.companyType,
    required this.roles,
    required this.companyImage,
  });

  final int id;
  final String position;
  final String companyName;
  final String contactNumber;
  final String toFrom;
  final String companyType;
  final String companyImage;
  final List<String> roles;
}
