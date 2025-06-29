import 'package:flutter/material.dart';

import '../../contact/view/tabview_contactme_section.dart';
import '../../landing/tablet_view.dart';
import '../../widgets/bottom_copyrights.dart';

class TabletViewScreen extends StatelessWidget {
  const TabletViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TabletViewLandingSection(),


          ///
          TabviewContactMeScreen(),

          ///
          const BottomCopyRights(),
        ],
      ),
    );
  }

  /*   @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeCon) {
        return GetBuilder<HomeInfoController>(
          builder: (homeInfoCon) {
            return Container(
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
                  padding: EdgeInsets.only(left: 10.0),
                  color: themeCon.getImageBlueColor(context),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "${homeInfoCon.infoDetails?.info?.firstName} ",
                            style: GoogleFonts.montserrat(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: themeCon.getWhiteBlackColor(context),
                            ),
                            children: [
                              TextSpan(
                                text: "${homeInfoCon.infoDetails?.info?.lastName}",
                                style: GoogleFonts.montserrat(
                                  fontSize: 30,
                                  color: themeCon.getYellowColor(context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GlobalText(
                          str: "${homeInfoCon.infoDetails?.info?.designation}",
                          color: themeCon.getYellowColor(context),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                          // decoration: BoxDecoration(
                          //   color: const Color(0x66000000),
                          //   borderRadius: BorderRadius.circular(5.0),
                          // ),
                          child: Row(
                            children: [
                              GlobalText(
                                str: "Work areas ",
                                fontSize: 18.0,
                                color: themeCon.getWhiteBlackColor(context),
                              ),
                              sizedBoxW(5.0),
                              TypewriterWidget(fontSize: 16.0),
                              GlobalText(
                                str: " Development",
                                fontSize: 1.0,
                                color: themeCon.getWhiteBlackColor(context),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),

                        /// * ==@ SOCIAL MEDIA LINK * ==
                        Row(
                          children: [
                            GlobalImageLoader(
                              imageUrl: homeInfoCon.infoDetails?.info?.socialMedia?.github?.url,
                              imagePath: Images.github,
                              width: 35,
                            ),
                            GlobalImageLoader(
                              imageUrl: homeInfoCon.infoDetails?.info?.socialMedia?.stackoverflow?.url,
                              imagePath: Images.stackOverFlow,
                              width: 35,
                            ),
                            GlobalImageLoader(
                              imageUrl: homeInfoCon.infoDetails?.info?.socialMedia?.linkedin?.url,
                              imagePath: Images.linkedIn,
                              width: 35,
                            ),
                            GlobalImageLoader(
                              imageUrl: homeInfoCon.infoDetails?.info?.socialMedia?.facebook?.url,
                              imagePath: Images.facebook,
                              width: 35,
                            ),
                            GlobalImageLoader(
                              imageUrl: homeInfoCon.infoDetails?.info?.socialMedia?.xtwitter?.url,
                              imagePath: Images.twitter,
                              width: 35,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),

                        /// * ==@ THOUGHTS OF MIND * ==
                        GlobalText(
                          str: "${homeInfoCon.infoDetails?.info?.thoughts?.title}",
                          color: Color(0xFFFFF200),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        // const SizedBox(height: 2.0),
                        GlobalText(
                          str: "${homeInfoCon.infoDetails?.info?.thoughts?.subtitle}",
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(height: 20),

                        CustomButtonWidget(
                          width: 180,
                          color: Colors.red,
                          text: "FIND OUT MORE",
                          textColor: Colors.white,
                          onPressed: () {
                            Get.to(() => ThoughtsScreen());
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  } */
}
