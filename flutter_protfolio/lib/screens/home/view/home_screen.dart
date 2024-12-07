import 'dart:developer';
import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../global/constants/images.dart';
import '../../../global/methods/sizebox_widget.dart';
import '../../../global/widgets/global_text.dart';
import '../../media_query/responsive_button.dart';
import '../../settings/theme/controller/theme_controller.dart';
import '../../thoughts/thoughts_screen..dart';
import '../../widgets/customised_scaffold.dart';
import '../components/home_dialog_menu.dart';
import '../components/social_media_widget.dart';
import '../controller/home_info_controller.dart';
import '../../media_query/media_query_padding.dart';
import '../../media_query/media_query_style.dart';
import '../../media_query/style_name.dart';
import '/controller/url_controller/url_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Get.find<UrlAndPlatformController>().getPlatformInfo();
    Get.find<HomeInfoController>().getHomeInfoData();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UrlAndPlatformController>(
      builder: (urlAndPlatformCon) {
        return GetBuilder<ThemeController>(
          builder: (themeCon) {
            return GetBuilder<HomeInfoController>(
              builder: (homeInfoCon) {
                return CustomisedScaffold(
                  floatingActionButton: FloatingActionButton(
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
                    constraints: BoxConstraints(maxWidth: 1440),
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
                        padding: ScreenPadding.getPadding(context),
                        color: const Color(0xA3131212),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: "${homeInfoCon.infoDetails?.info?.firstName} ",
                                  style: ResponsiveTextStyles.getTextStyle(
                                    styleType: styleNames[StyleName.headerTitleFirst],
                                    parentCtx: context,
                                    fontSize: 25,
                                    color: themeCon.getWhiteBlackColor(context),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "${homeInfoCon.infoDetails?.info?.lastName}",
                                      style: ResponsiveTextStyles.getTextStyle(
                                        styleType: styleNames[StyleName.headerTitleLast],
                                        parentCtx: context,
                                        fontSize: 25,
                                        color: themeCon.getHeadingColor(context),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GlobalText(
                                str: "${homeInfoCon.infoDetails?.info?.designation}",
                                styleType: styleNames[StyleName.subTitle],
                                color: Color(0xFFFFF200),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                decoration: BoxDecoration(
                                  color: const Color(0x66000000),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: IntrinsicWidth(
                                  // Ensures the width adjusts dynamically
                                  child: Row(
                                    children: [
                                      GlobalText(
                                        str: "I am a",
                                        styleType: styleNames[StyleName.bodyTitle],
                                        fontSize: 18,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      sizedBoxW(5.0),
                                      Flexible(
                                        // Allows the TypewriterAnimatedText to resize without overflow
                                        child: AnimatedTextKit(
                                          animatedTexts: [
                                            TypewriterAnimatedText(
                                              "${homeInfoCon.infoDetails?.info?.workFields?.nativeAndroid}",
                                              cursor: "|",
                                              textStyle: ResponsiveTextStyles.getTextStyle(
                                                parentCtx: context,
                                                styleType: styleNames[StyleName.bodyTitle],
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20,
                                                color: Color(0xFFFFF200),
                                              ),
                                              speed: const Duration(milliseconds: 130),
                                            ),
                                            TypewriterAnimatedText(
                                              "${homeInfoCon.infoDetails?.info?.workFields?.flutter}",
                                              cursor: "_",
                                              textStyle: ResponsiveTextStyles.getTextStyle(
                                                styleType: styleNames[StyleName.bodyTitle],
                                                parentCtx: context,
                                                fontSize: 20,
                                                color: Color(0xFFFF9D00),
                                              ),
                                              speed: const Duration(milliseconds: 150),
                                            ),
                                            TypewriterAnimatedText(
                                              "${homeInfoCon.infoDetails?.info?.workFields?.nodejs}",
                                              cursor: "|",
                                              textStyle: ResponsiveTextStyles.getTextStyle(
                                                styleType: styleNames[StyleName.bodyTitle],
                                                parentCtx: context,
                                                fontSize: 20,
                                                color: Color(0xFFFFF200),
                                              ),
                                              speed: const Duration(milliseconds: 180),
                                            ),
                                            TypewriterAnimatedText(
                                              "${homeInfoCon.infoDetails?.info?.workFields?.springBoot}",
                                              cursor: "_",
                                              textStyle: ResponsiveTextStyles.getTextStyle(
                                                styleType: styleNames[StyleName.bodyTitle],
                                                parentCtx: context,
                                                fontSize: 20,
                                                
                                                color: Color(0xFFFF9D00),
                                              ),
                                              speed: const Duration(milliseconds: 200),
                                            ),
                                            TypewriterAnimatedText(
                                              "${homeInfoCon.infoDetails?.info?.workFields?.vuejs}",
                                              cursor: "_|",
                                              textStyle: ResponsiveTextStyles.getTextStyle(
                                                styleType: styleNames[StyleName.bodyTitle],
                                                parentCtx: context,
                                                fontSize: 20,
                                                color: Color(0xFFFFF200),
                                              ),
                                              speed: const Duration(milliseconds: 230),
                                            ),
                                          ],
                                          repeatForever: true,
                                          pause: const Duration(milliseconds: 1000),
                                          displayFullTextOnTap: true,
                                          stopPauseOnTap: true,
                                        ),
                                      ),
                                      GlobalText(
                                        str: "Developer",
                                        styleType: styleNames[StyleName.bodyTitle],
                                        fontSize: 18,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ],
                                  ),
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
                              GlobalText(
                                str: "${homeInfoCon.infoDetails?.info?.thoughts?.title}",
                                styleType: styleNames[StyleName.subTitle],
                                color: Color(0xFFFFF200),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              // const SizedBox(height: 2.0),
                              GlobalText(
                                str: "${homeInfoCon.infoDetails?.info?.thoughts?.subtitle}",
                                styleType: styleNames[StyleName.bodyTitle],
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(height: 20),

                              ResponsiveButton.getResponsiveButton(
                                parentCtx: context,
                                btnHeight: 45,
                                btnWidth: 150,
                                title: "FIND OUT MORE",
                                titleColor: Colors.white,
                                fontSize: 13,
                                onPressed: () {
                                  Get.to(() => ThoughtsScreen());
                                  log('new screen.. ');
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
      },
    );
  }
}
