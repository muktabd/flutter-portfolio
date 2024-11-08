import 'dart:developer';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/global/widgets/button/primary_button.dart';
import 'package:flutter_portfolio/global/widgets/global_text.dart';
import 'package:flutter_portfolio/global/widgets/network_image_with_loader.dart';
import 'package:flutter_portfolio/screens/home/components/end_drawer_widget.dart';
import 'package:flutter_portfolio/screens/home/controller/home_info_controller.dart';
import 'package:flutter_portfolio/screens/settings/theme/controller/theme_controller.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../components/images.dart';
import '../../global/constants/color_resources.dart';
import '../../global/widgets/custom_toast.dart';
import 'components/social_media_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMobile = false;
  @override
  void initState() {
    super.initState();
    Get.find<HomeInfoController>().getHomeInfoData();
    if (Platform.isAndroid) {
      isMobile = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    log("now size ?? $size");
    return Material(
      child: GetBuilder<ThemeController>(
        builder: (themeCon) {
          return GetBuilder<HomeInfoController>(
            builder: (homeInfoCon) {
              return Scaffold(
                endDrawer: EndDrawerWidget(),
                body: Stack(
                  children: [
                    ///* ==@ BACKGROUND COVER IMAGE ==
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Images.coverImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: BackdropFilter(
                        filter: ui.ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                        child: Container(
                          color: const ui.Color(0xA3131212),
                        ),
                      ),
                    ),

                    ///* ==@ FLOATING DRAWER ICON ==
                    Positioned(
                      top: 26.0,
                      right: isMobile ? 0 : 20.0,
                      child: Builder(
                        builder: (context) => IconButton(
                          onPressed: () {
                            Scaffold.of(context).openEndDrawer();
                          },
                          tooltip: 'Drawer',
                          icon: Icon(Icons.menu),
                        ),
                      ),
                    ),

                    ///* ==@ PERSONAL INFORMATION ==
                    Positioned(
                      top: isMobile ? 300 : 400.0,
                      left: isMobile ? 20 : 80.0,
                      child: Container(
                        color: Colors.black54.withOpacity(0.0),
                        height: size.height,
                        child: SingleChildScrollView(
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
                                    url: '${homeInfoCon.infoDetails?.info?.socialMedia?.github?.url}',
                                    isMobile: isMobile,
                                  ),
                                  SocialMediaWidget(
                                    icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.stackoverflow?.icon}',
                                    url: '${homeInfoCon.infoDetails?.info?.socialMedia?.stackoverflow?.url}',
                                    isMobile: isMobile,
                                  ),
                                  SocialMediaWidget(
                                    icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.linkedin?.icon}',
                                    url: '${homeInfoCon.infoDetails?.info?.socialMedia?.linkedin?.url}',
                                    isMobile: isMobile,
                                  ),
                                  SocialMediaWidget(
                                    icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.xtwitter?.icon}',
                                    url: '${homeInfoCon.infoDetails?.info?.socialMedia?.xtwitter?.url}',
                                    isMobile: isMobile,
                                  ),
                                  SocialMediaWidget(
                                    icon: '${homeInfoCon.infoDetails?.info?.socialMedia?.facebook?.icon}',
                                    url: '${homeInfoCon.infoDetails?.info?.socialMedia?.facebook?.url}',
                                    isMobile: isMobile,
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
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
