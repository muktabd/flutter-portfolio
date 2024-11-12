import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/url_controller/url_controller.dart';
import '../../global/constants/images.dart';
import '../../global/widgets/button/primary_button.dart';
import '../../global/widgets/custom_toast.dart';
import '../../global/widgets/global_text.dart';
import 'components/social_media_widget.dart';
import 'controller/home_info_controller.dart';
import '../settings/theme/controller/theme_controller.dart';

class HomeTest extends StatefulWidget {
  const HomeTest({super.key});

  @override
  State<HomeTest> createState() => _HomeTestState();
}

class _HomeTestState extends State<HomeTest> {
  bool isMobile = false;
  @override
  void initState() {
    super.initState();
    Get.find<HomeInfoController>().getHomeInfoData();

    if (kIsWeb) {
      isMobile = false;
    } else if (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android) {
      isMobile = true;
    } else if (defaultTargetPlatform == TargetPlatform.linux ||
        defaultTargetPlatform == TargetPlatform.macOS ||
        defaultTargetPlatform == TargetPlatform.windows ||
        defaultTargetPlatform == TargetPlatform.fuchsia) {
      isMobile = false;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UrlAndPlatformController>(builder: (urlnPlatformCon) {
      return GetBuilder<ThemeController>(
        builder: (themeCon) {
          return Scaffold(
            body: GetBuilder<HomeInfoController>(
              builder: (homeInfoCon) {
                return CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Images.coverImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
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
                                        fontSize: isMobile ? 20 : 45,
                                        fontWeight: FontWeight.bold,
                                        height: 1.0,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "${homeInfoCon.infoDetails?.info?.lastName}",
                                          style: TextStyle(
                                            color: Colors.yellow.shade700,
                                            fontSize: isMobile ? 20 : 45,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  /* const SizedBox(height: 15),
                                          Container(
                                            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
                                            decoration: BoxDecoration(color: Colors.black87),
                                            child: Text(
                                              "${homeInfoCon.infoDetails?.info?.openToWork}",
                                            ),
                                          ), */
                                  SizedBox(height: isMobile ? 10 : 15),
                                  RichText(
                                    text: TextSpan(
                                      text: "${homeInfoCon.infoDetails?.info?.designation}",
                                      style: TextStyle(
                                        color: Color(0xFFFFF200),
                                        fontSize: isMobile ? 15 : 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  GlobalText(
                                    str: "${homeInfoCon.infoDetails?.info?.workFields}",
                                    fontSize: isMobile ? 12 : 20,
                                  ),
                                  SizedBox(height: isMobile ? 10 : 25),

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
                                    ],
                                  ),
                                  SizedBox(height: isMobile ? 15 : 35),

                                  /// * ==@ THOUGHTS OF MIND * ==
                                  RichText(
                                    text: TextSpan(
                                      text: "${homeInfoCon.infoDetails?.info?.thoughts?.title}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: isMobile ? 15 : 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "\n${homeInfoCon.infoDetails?.info?.thoughts?.subtitle}",
                                          style: TextStyle(
                                            color: Colors.yellow.shade700,
                                            fontSize: isMobile ? 12 : 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),

                                  CustomButtonWidget(
                                    width: isMobile ? 140 : 250,
                                    height: isMobile ? 40 : null,
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
            ),
          );
        },
      );
    },);
  }
}
