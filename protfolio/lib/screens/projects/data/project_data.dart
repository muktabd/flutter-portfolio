import '../../../global/constants/images.dart';
import '../model/project_data_model.dart';
/* 
Major Projects
From the beginning of my professional career, I have been involved in developing management-type applications, based on both company responsibilities and client requirements.
Through these projects, I’ve gained a solid foundation in the Flutter application development process. As a result, handling any kind of Flutter project has become much easier for me, and I am confident in my ability to deliver high-quality solutions.
Below are some of the projects I have worked on:

Visitor Management System:
A mobile-based system where staff and admins use separate apps to manage office visits. Staff can invite visitors and schedule appointments, while visitors can select a date, time, and meeting person through their app. Admins oversee and manage both user types. As it runs on a local server, the apps are not published on the Play Store or App Store. 
(More details available on the DeltaFrontier website.)

*/

List<ProjectModelData> projectList = [
  ProjectModelData(
    icon: Images.mdgsAppIcon,
    title: "MDGS (VEP Services/OPS)",
    desciption:
        "A government app developed for JPJ to manage vehicle entry applications, specifically for Singapore–Malaysia border crossings. It allows vehicle owners to track application status, road and toll charges, violations, and more. Also known as the VEP (Vehicle Entry Permit) service. For more information, visit the JPJ VEP web portal or download the app.",
    platformName: [
      PlatformName(icon: Images.googlePlay, name: "Android", url: "https://play.google.com/store/apps/details?id=com.tcsens.mdgs.otps", videoUrl: ""),
      PlatformName(icon: Images.appStore, name: "iOS", url: "https://apps.apple.com/my/app/mdgs/id6474460905", videoUrl: ""),
    ],
  ),
  ProjectModelData(
    icon: Images.weHealthAppIcon,
    title: "WE HEALTH",
    desciption:
        "A health tracking app integrated with physical health devices to monitor blood pressure, blood sugar, weight, calories, and diet charts. Users’ health data is recorded and monitored by doctors. The app also allows users to book doctor appointments via available time slots.",
    platformName: [
      PlatformName(
        icon: Images.googlePlay,
        name: "Android",
        url: "https://play.google.com/store/apps/details?id=connected.healthcare.checkupasia",
        videoUrl: "",
      ),
      PlatformName(icon: Images.appStore, name: "iOS", url: "https://apps.apple.com/my/app/wehealth/id1370251043", videoUrl: ""),
    ],
  ),

  ProjectModelData(
    icon: Images.komukuAppIcon,
    title: "KOMUNITIKU",
    desciption:
        "A community-based app that allows local residents to buy and sell products, report incidents (e.g., floods, fires) to local authorities, search for jobs, and access other community-related services.",
    platformName: [
      PlatformName(icon:Images.googlePlay, name: "Android", url: "https://play.google.com/store/apps/details?id=emasa.paip.com.etap", videoUrl: ""),
      PlatformName(icon: Images.appStore, name: "iOS", url: "https://apps.apple.com/us/app/emasa-tap/id1606404194", videoUrl: ""),
    ],
  ),
  ProjectModelData(
    icon: Images.emasaAppIcon,
    title: "QR Attendance System:",
    desciption:
        "An employee management app for organizations where staff check in and out by scanning a QR code. The app also provides employees with a weekly attendance summary for review.",
    platformName: [
      PlatformName(icon: Images.googlePlay, name: "Android", url: "https://play.google.com/store/apps/details?id=com.emasatani.user", videoUrl: ""),
      PlatformName(icon: Images.appStore, name: "iOS", url: "https://apps.apple.com/us/app/emasa-tap/id1606404194", videoUrl: ""),
    ],
  ),
  ProjectModelData(
    icon: "assets/images/wehealthwebp.webp",
    title: "Practicing Muslim",
    desciption:
        "A welfare-focused project developed under my leadership, aimed at supporting Muslims in following Islamic teachings in their daily lives. The app provides reminders, guidelines, and resources to help users stay aligned with Islamic principles and practices.",
    platformName: [
      PlatformName(
        icon: Images.googlePlay,
        name: "Android",
        url: "https://play.google.com/store/apps/details?id=org.practicingmuslim.app",
        videoUrl: "",
      ),
      PlatformName(icon: Images.appStore, name: "iOS", url: "https://apps.apple.com/my/app/practicing-muslim/id6742254396", videoUrl: ""),
    ],
  ),
];
