import 'package:flutter/material.dart';
import 'package:portfolio/global/methods/sizebox_widget.dart';
import '../../../components/section_title.dart';
import '../../../domain/server/http_client/app_config.dart';
import '../../../global/methods/custom_url_launcher.dart';
import '../../../global/widgets/custom_devider.dart';
import '../../../global/widgets/global_text.dart';

class MobileViewAboutMeSection extends StatefulWidget {
  const MobileViewAboutMeSection({super.key});

  @override
  State<MobileViewAboutMeSection> createState() => _MobileViewAboutMeSectionState();
}

class _MobileViewAboutMeSectionState extends State<MobileViewAboutMeSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SectionTitle(
            title: "About Me",
            subTitle: "Let me tell you about myself",
            color: Colors.yellowAccent.shade700,
          ),
          const SizedBox(height: 25.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalText(str: "Background Brief", fontWeight: FontWeight.bold, fontSize: 20.0),
              SizedBox(height: 15.0),
              GlobalText(
                textAlign: TextAlign.left,
                str:
                    '''I graduated with a degree in Computer Science from Universiti Teknologi Malaysia (UTM). During my studies, I began coding to solve real-life problems, which sparked my passion for software development.

After graduation, I immediately started my professional career as a mobile application developer. Over the past four years, I have been dedicated to building high-quality mobile apps. My interest in expanding my skill set led me to explore JavaScript technologies. I have since learned Node.js for backend API development and Vue.js for frontend web applications.

Currently, I work as a full-stack developer, capable of delivering high-performance, scalable, and secure applications across Android, iOS, and Web platforms. Also able to play a role for lead developer to develop a fresh project.''',
                softWrap: true,
              ),
            ],
          ),

          // Core Competencies Section
          const SizedBox(height: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalText(str: "Core Competencies", fontWeight: FontWeight.bold, fontSize: 18.0),
              const SizedBox(height: 8.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Column in Right Section
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        GlobalText(
                          str: "Development Tools",
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(height: 5.0),
                        GlobalText(
                          str:
                              "Android Studio, Visual Studio Code, Xcode, Postman, GitHub, GitLab, CI/CD, Figma, Firebase, Jira, Trello",
                          softWrap: true,
                        ),

                        //
                        SizedBox(height: 20.0),
                        GlobalText(
                          str: "Languages & Framework",
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(height: 5.0),
                        GlobalText(str: "Java, Dart, PHP, Flutter, Express, VueJS", softWrap: true),
                        //
                        SizedBox(height: 20.0),
                        GlobalText(
                          str: "State Management",
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(height: 5.0),
                        GlobalText(str: "Bloc, GetX, Provider, Pinia", softWrap: true),
                      ],
                    ),
                  ),

                  SizedBox(width: 20.0), // Space between columns
                  // Right Column in Right Section
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        GlobalText(
                          str: "Mobile App Development",
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(height: 5.0),
                        GlobalText(str: "Flutter, Dart, Firebase, Rest API", softWrap: true),

                        //
                        SizedBox(height: 20.0),
                        GlobalText(
                          str: "Backend Development",
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(height: 5.0),
                        GlobalText(
                          str:
                              "NodeJS with Express, Java Spring Boot (Learning), AWS, MongoDB, SQL",
                          softWrap: true,
                        ),
                        //
                        SizedBox(height: 20.0),
                        GlobalText(
                          str: "Others",
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(height: 5.0),
                        GlobalText(
                          str:
                              "Third Party API implementing like Twilio, Bulk SMS, Payment Gateway, FCM, Publishing app on Google Play, App Store & Huawei App Gallery",
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          ///
          // const SizedBox(width: 30.0),
          const SizedBox(height: 25.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  doneSofar("5+", "Years\nExperiences"),
                  CustomDividerVertical(),
                  doneSofar("20+", "Projects\nCompleted"),
                  CustomDividerVertical(),
                  doneSofar("10+", "Satisfied\nClients"),
                  // Flexible(child: Image.asset("assets/images/mukta.png", height: 300)),
                ],
              ),
              SizedBox(height: 40.0),
              Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        ///
                      },
                      iconWidget: Image.asset("assets/images/hand.png", width: 20),
                      text: "Hire Me".toUpperCase(),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        // Get.to(() => MyResumeScreen());
                        launchUrlNow(
                          AppConfig.resureLinkUri
                        );
                      },
                      color: Colors.deepOrange,
                      iconWidget: Icon(Icons.cloud_download, color: Colors.white),
                      text: "Download Resume".toUpperCase(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50.0),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String text;
  final Color? color;
  final Function()? onTap;
  final Widget? iconWidget;
  const CustomContainer({super.key, required this.text, this.color, this.onTap, this.iconWidget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(width: 1, color: color ?? Colors.deepOrange),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconWidget ?? SizedBox.shrink(),
            sizedBoxW(8.0),
            GlobalText(
              str: text,
              fontSize: 12.0,
              // textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

Widget doneSofar(String title, String subTitle) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      GlobalText(str: title, color: Colors.deepOrange, fontSize: 20.0),
      SizedBox(height: 10.0),
      GlobalText(str: subTitle, textAlign: TextAlign.center),
    ],
  );
}
