import 'package:flutter/material.dart';
import 'package:portfolio/global/methods/sizebox_widget.dart';
import '../../../global/methods/custom_url_launcher.dart';
import '../../../global/widgets/custom_devider.dart';
import '../../../global/widgets/global_text.dart';
import '../../experiences/view/components/card_title_widget.dart';

class WebAboutMeSection extends StatefulWidget {
  const WebAboutMeSection({super.key});

  @override
  State<WebAboutMeSection> createState() => _WebAboutMeSectionState();
}

class _WebAboutMeSectionState extends State<WebAboutMeSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
      constraints: BoxConstraints(maxWidth: 1640.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CardTitleWidget(title: "About Me", subTitle: "Let me tell you about myself"),
          const SizedBox(height: 50.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Left Side - Flex 2
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GlobalText(str: "Background Brief", fontWeight: FontWeight.bold, fontSize: 20.0),
                    SizedBox(height: 15.0),
                    GlobalText(
                      textAlign: TextAlign.justify,
                      str:
                          '''I graduated with a degree in Computer Science from Universiti Teknologi Malaysia (UTM). During my studies, I began coding to solve real-life problems, which sparked my passion for software development.

After graduation, I immediately started my professional career as a mobile application developer. Over the past four years, I have been dedicated to building high-quality mobile apps. My interest in expanding my skill set led me to explore JavaScript technologies. I have since learned Node.js for backend API development and Vue.js for frontend web applications.

Currently, I work as a full-stack developer, capable of delivering high-performance, scalable, and secure applications across Android, iOS, and Web platforms. Also able to play a role for lead developer to develop a fresh project.''',
                      softWrap: true,
                    ),

                    //
                    // SizedBox(height: 40.0),
                  ],
                ),
              ),

              const SizedBox(width: 40),

              /// Right Side - Flex 3
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GlobalText(str: "Core Competencies", fontWeight: FontWeight.bold, fontSize: 20.0),
                    const SizedBox(height: 15.0),
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
                                fontSize: 18.0,
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
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(height: 5.0),
                              GlobalText(str: "Java, Dart, PHP, Flutter, Express, VueJS", softWrap: true),
                              //
                              SizedBox(height: 20.0),
                              GlobalText(
                                str: "State Management",
                                fontSize: 18,
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
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(height: 5.0),
                              GlobalText(str: "Flutter, Dart, Firebase, Rest API", softWrap: true),

                              //
                              SizedBox(height: 20.0),
                              GlobalText(
                                str: "Backend Development",
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(height: 5.0),
                              GlobalText(
                                str: "NodeJS with Express, Java Spring Boot (Learning), AWS, MongoDB, SQL",
                                softWrap: true,
                              ),
                              //
                              SizedBox(height: 20.0),
                              GlobalText(
                                str: "Others",
                                fontSize: 18.0,
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
              ),
              const SizedBox(width: 40.0),

              //
            ],
          ),

          ///
          ///
          const SizedBox(width: 40.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 👇 Expanded around the entire left Column
              SizedBox(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 55.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        doneSofar("5+", "Years\nExperiences"),
                        CustomDividerVertical(),
                        doneSofar("20+", "Projects\nCompleted"),
                        CustomDividerVertical(),
                        doneSofar("10+", "Satisfied\nClients"),
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
                        SizedBox(width: 10.0),
                        Expanded(
                          child: CustomContainer(
                            onTap: () {
                              // Get.to(() => MyResumeScreen());
                              launchUrlNow(
                                'https://drive.google.com/file/d/1pOZotyXKGOYOJIa0lhclWBjgGZbvK7QE/view?usp=sharing',
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
              ),
              // 👇 Right-side image
              Image.asset("assets/images/mukta.png", height: 300),
            ],
          ),
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
            sizedBoxW(12.0),
            GlobalText(
              str: text,
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
      GlobalText(str: title, color: Colors.deepOrange, fontSize: 25.0),
      SizedBox(height: 10.0),
      GlobalText(str: subTitle, textAlign: TextAlign.center),
    ],
  );
}
