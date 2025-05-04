import 'package:flutter/material.dart';

import '../../../global/constants/images.dart';

class WorkExperienceModel {
  const WorkExperienceModel({
    required this.id,
    required this.position,
    required this.companyName,
    required this.contactNumber,
    required this.toFrom,
    required this.companyType,
    required this.companyImage,
    required this.color,
    required this.roles,
  });

  final int id;
  final String position;
  final String companyName;
  final String contactNumber;
  final String toFrom;
  final String companyType;
  final String companyImage;
  final Color color;
  final List<String> roles;
}

final List<WorkExperienceModel> workData = [
  WorkExperienceModel(
    id: 4,
    position: "Mobile App Developer",
    companyName: "TCSENS SDN. BHD.",
    contactNumber: "+60 16-330 1328",
    toFrom: "August 2023 - Running",
    companyType: "Medical & Health Care Software Solutions Based Comapny",
    companyImage: Images.weHealthLogo,
    color: Colors.green.shade900,
    roles: [
      "A native app developer using Android Studio with Java & Kotlin",
      "Native app bug fixer & features adder",
      "Native app converter to Flutter",
      "Backend API implementation both native & flutter",
      "Firebase implementation",
      "App publisher in Google Play Store and Huawei AppGallery",
    ],
  ),
  WorkExperienceModel(
    id: 3,
    position: "Mobile App Developer",
    companyName: "UMCH Tech SDN. BHD.",
    contactNumber: "+60 16-330 1328",
    toFrom: "August 2022 - July 2023",
    companyType: "Medical & Health Care Software Solutions Based Comapny",
    companyImage: Images.weHealthLogo,
    color: Colors.blue,
    roles: [
      "A native app developer using Android Studio with Java & Kotlin",
      "A native app developer using Android Studio with Java & Kotlin",
      "Native app bug fixer & features adder",
      "Native app converter to Flutter",
      "Backend API implementation both native & flutter",
      "Firebase implementation",
      "App publisher in Google Play Store and Huawei AppGallery",
    ],
  ),
  WorkExperienceModel(
    id: 2,
    position: "Mobile App Developer",
    companyName: "Biz Trading & Total Cad Solution SDN. BHD.",
    contactNumber: "+60 11 397909129",
    toFrom: "February 2021 - July 2022",
    companyType: "Mechemical & Software Based Company",
    companyImage: Images.bizTradingLogo,
    color: Colors.orange.shade900,
    roles: [
      "A trainer of flutter development",
      "A trainer of flutter development",
      "Lead of development mobile and web",
      "Implement design from prototype",
      "Backend API implementation",
      "Firebase implementation",
      "App publisher in Google Play Store and App Store",
    ],
  ),
  WorkExperienceModel(
    id: 1,
    position: "Mobile App Developer",
    companyName: "DeltaFrontier SDN. BHD.",
    contactNumber: "+65 9825 6483",
    toFrom: "August 2020 - January 2021",
    companyType: "AI & IOT Based Company",
    companyImage: Images.dfLogo,
    color: Colors.brown,
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
];
