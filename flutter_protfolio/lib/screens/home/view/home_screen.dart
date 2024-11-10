import 'dart:developer';
import 'dart:ui';
import '/controller/url_controller/url_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../global/constants/images.dart';
import '../components/home_dialog_menu.dart';
import '/global/widgets/button/primary_button.dart';
import '/global/widgets/global_text.dart';
import '../controller/home_info_controller.dart';
import '../../settings/theme/controller/theme_controller.dart';
import '../../widgets/customised_scroll_view.dart';

import '../../../global/widgets/custom_toast.dart';
import '../components/social_media_widget.dart';

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
    Size size = MediaQuery.of(context).size;
    log("now size ?? $size");
    return Material(
      child: GetBuilder<ThemeController>(
        builder: (themeCon) {
          return GetBuilder<UrlAndPlatformController>(
            builder: (urlnPlatformCon) {
              log("platform detected ?? ${urlnPlatformCon.isMobile}");
              return GetBuilder<HomeInfoController>(
                builder: (homeInfoCon) {
                  return CustomisedScrolView(
                    floatingActionButton: FloatingActionButton(
                      onPressed: () async {
                        await showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return HomeDialogWidget();
                            });
                      },
                      child: Icon(Icons.menu),
                    ),
                    slivers: [
                      SliverToBoxAdapter(
                        child: Container(
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
                              padding: EdgeInsets.symmetric(horizontal: urlnPlatformCon.isMobile ? 20 : 120),
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
                                          fontSize: urlnPlatformCon.isMobile ? 20 : 45,
                                          fontWeight: FontWeight.bold,
                                          height: 1.0,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "${homeInfoCon.infoDetails?.info?.lastName}",
                                            style: TextStyle(
                                              color: Colors.yellow.shade700,
                                              fontSize: urlnPlatformCon.isMobile ? 20 : 45,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(height: urlnPlatformCon.isMobile ? 0.0 : 5.0),
                                    GlobalText(
                                      str: "${homeInfoCon.infoDetails?.info?.designation}",
                                      color: Color(0xFFFFF200),
                                      fontSize: urlnPlatformCon.isMobile ? 15 : 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 15),
                                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      decoration: BoxDecoration(
                                        color: const Color(0x66000000),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      child: GlobalText(
                                        str: "${homeInfoCon.infoDetails?.info?.workFields}",
                                        fontSize: urlnPlatformCon.isMobile ? 12 : 20,
                                      ),
                                    ),

                                    SizedBox(height: urlnPlatformCon.isMobile ? 10 : 25),

                                    /// * ==@ SOCIAL MEDIA LINK * ==
                                    Row(
                                      children: [
                                        SocialMediaWidget(
                                          icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.github?.icon}',
                                          url: '${homeInfoCon.infoDetails?.info?.socialMedia?.github?.url}',
                                          isMobile: urlnPlatformCon.isMobile,
                                        ),
                                        SocialMediaWidget(
                                          icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.stackoverflow?.icon}',
                                          url: '${homeInfoCon.infoDetails?.info?.socialMedia?.stackoverflow?.url}',
                                          isMobile: urlnPlatformCon.isMobile,
                                        ),
                                        SocialMediaWidget(
                                          icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.linkedin?.icon}',
                                          url: '${homeInfoCon.infoDetails?.info?.socialMedia?.linkedin?.url}',
                                          isMobile: urlnPlatformCon.isMobile,
                                        ),
                                        SocialMediaWidget(
                                          icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.xtwitter?.icon}',
                                          url: '${homeInfoCon.infoDetails?.info?.socialMedia?.xtwitter?.url}',
                                          isMobile: urlnPlatformCon.isMobile,
                                        ),
                                        SocialMediaWidget(
                                          icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.facebook?.icon}',
                                          url: '${homeInfoCon.infoDetails?.info?.socialMedia?.facebook?.url}',
                                          isMobile: urlnPlatformCon.isMobile,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: urlnPlatformCon.isMobile ? 15 : 35),

                                    /// * ==@ THOUGHTS OF MIND * ==
                                    RichText(
                                      text: TextSpan(
                                        text: "${homeInfoCon.infoDetails?.info?.thoughts?.title}",
                                        style: TextStyle(
                                          color: Color(0xFFFFF200),
                                          fontSize: urlnPlatformCon.isMobile ? 15 : 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "\n${homeInfoCon.infoDetails?.info?.thoughts?.subtitle}",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: urlnPlatformCon.isMobile ? 12 : 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 20),

                                    CustomButtonWidget(
                                      width: urlnPlatformCon.isMobile ? 140 : 250,
                                      height: urlnPlatformCon.isMobile ? 40 : null,
                                      text: "FIND OUT MORE",
                                      onPressed: () {
                                        showToast("Sorry, This section under development!!!");
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
