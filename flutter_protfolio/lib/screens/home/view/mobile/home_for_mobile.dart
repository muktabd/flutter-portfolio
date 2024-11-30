import 'dart:developer';
import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/global/widgets/global_text.dart';
import 'package:get/get.dart';

import '../../../../global/constants/images.dart';
import '../../../../global/methods/sizebox_widget.dart';
import '../../../../global/widgets/button/primary_button.dart';
import '../../../settings/theme/controller/theme_controller.dart';
import '../../../thoughts/thoughts_screen..dart';
import '../../../widgets/customised_scaffold.dart';
import '../../components/home_dialog_menu.dart';
import '../../components/social_media_widget.dart';
import '../../controller/home_info_controller.dart';

class HomeForMobileView extends StatefulWidget {
  const HomeForMobileView({super.key});

  @override
  State<HomeForMobileView> createState() => _HomeForMobileViewState();
}

class _HomeForMobileViewState extends State<HomeForMobileView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeCon) {
        return GetBuilder<HomeInfoController>(
          builder: (homeInfoCon) {
            return CustomisedScaffold(
              floatingActionButton: FloatingActionButton(
                mini: true,
                child: Icon(Icons.menu),
                onPressed: () async {
                  await showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return HomeDialogWidget();
                    },
                  );
                },
              ),
              mainScaffold: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Images.coverImage),
                    // fit: BoxFit.fitHeight,
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    // padding: EdgeInsets.symmetric(horizontal: 200),
                    color: const Color(0xA3131212),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // const Spacer(),
                          const SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              text: "${homeInfoCon.infoDetails?.info?.firstName} ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                height: 1.0,
                              ),
                              children: [
                                TextSpan(
                                  text: "${homeInfoCon.infoDetails?.info?.lastName}",
                                  style: TextStyle(
                                    color: Colors.yellow.shade700,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // SizedBox(height: 5.0),
                          GlobalText(
                            str: "${homeInfoCon.infoDetails?.info?.designation}",
                            color: Color(0xFFFFF200),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 230,
                            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: const Color(0x66000000),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Row(
                              children: [
                                GlobalText(
                                  str: "I am a",
                                  fontSize: 10,
                                ),
                                sizedBoxW(5.0),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      "${homeInfoCon.infoDetails?.info?.workFields?.nativeAndroid}",
                                      cursor: "|",
                                      textStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFFF200),
                                      ),
                                      speed: const Duration(milliseconds: 130),
                                    ),
                                    TypewriterAnimatedText(
                                      "${homeInfoCon.infoDetails?.info?.workFields?.flutter}",
                                      cursor: "_",
                                      textStyle: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFF9D00),
                                      ),
                                      speed: const Duration(milliseconds: 150),
                                    ),
                                    TypewriterAnimatedText(
                                      "${homeInfoCon.infoDetails?.info?.workFields?.nodejs}",
                                      cursor: "|",
                                      textStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFFF200),
                                      ),
                                      speed: const Duration(milliseconds: 180),
                                    ),
                                    TypewriterAnimatedText(
                                      "${homeInfoCon.infoDetails?.info?.workFields?.springBoot}",
                                      cursor: "_",
                                      textStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFF9D00),
                                      ),
                                      speed: const Duration(milliseconds: 200),
                                    ),
                                    TypewriterAnimatedText(
                                      "${homeInfoCon.infoDetails?.info?.workFields?.vuejs}",
                                      cursor: "_|",
                                      textStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFF9D00),
                                      ),
                                      speed: const Duration(milliseconds: 230),
                                    ),
                                  ],
                                  repeatForever: true,
                                  pause: const Duration(milliseconds: 1000),
                                  displayFullTextOnTap: true,
                                  stopPauseOnTap: true,
                                ),
                                GlobalText(
                                  str: "Developer",
                                  fontSize: 10,
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 10),

                          /// * ==@ SOCIAL MEDIA LINK * ==
                          Row(
                            children: [
                              SocialMediaWidget(
                                icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.github?.icon}',
                                assetImage: Images.github,
                                url: '${homeInfoCon.infoDetails?.info?.socialMedia?.github?.url}',
                              ),
                              SocialMediaWidget(
                                icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.stackoverflow?.icon}',
                                assetImage: Images.stackOverFlow,
                                url: '${homeInfoCon.infoDetails?.info?.socialMedia?.stackoverflow?.url}',
                              ),
                              SocialMediaWidget(
                                icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.linkedin?.icon}',
                                assetImage: Images.linkedIn,
                                url: '${homeInfoCon.infoDetails?.info?.socialMedia?.linkedin?.url}',
                              ),
                              SocialMediaWidget(
                                icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.xtwitter?.icon}',
                                assetImage: Images.twitter,
                                url: '${homeInfoCon.infoDetails?.info?.socialMedia?.xtwitter?.url}',
                              ),
                              SocialMediaWidget(
                                icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.facebook?.icon}',
                                assetImage: Images.facebook,
                                url: '${homeInfoCon.infoDetails?.info?.socialMedia?.facebook?.url}',
                              ),

                              ///
                            ],
                          ),
                          SizedBox(height: 15),

                          /// * ==@ THOUGHTS OF MIND * ==
                          RichText(
                            text: TextSpan(
                              text: "${homeInfoCon.infoDetails?.info?.thoughts?.title}",
                              style: TextStyle(
                                color: Color(0xFFFFF200),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: "\n${homeInfoCon.infoDetails?.info?.thoughts?.subtitle}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),

                          CustomButtonWidget(
                            color: Colors.red,
                            width: 140,
                            height: 40,
                            text: "FIND OUT MORE",
                            onPressed: () {
                              Get.to(() => ThoughtsScreen());
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
