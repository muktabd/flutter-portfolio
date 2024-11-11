import 'package:flutter/material.dart';
import '../../../global/constants/images.dart';
import '/components/constants.dart';
import 'components/onsite_job_timeline_widget.dart';

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
          // const SizedBox(height: kDefaultPadding),
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
