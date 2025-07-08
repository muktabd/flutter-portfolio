import 'package:flutter/material.dart';
import 'package:portfolio/global/methods/sizebox_widget.dart';
import 'package:portfolio/global/widgets/custom_listtile.dart';
import 'package:portfolio/global/widgets/global_text.dart';
import '/screens/settings/theme/controller/theme_controller.dart';
import 'package:get/get.dart';

import '../../global/constants/color_resources.dart';
import '../../localization/localization_controller.dart';

import '../settings/language/controller/language_controller.dart';

class HomeDialogWidget extends StatefulWidget {
  const HomeDialogWidget({super.key});

  @override
  State<HomeDialogWidget> createState() => _HomeDialogWidgetState();
}

class _HomeDialogWidgetState extends State<HomeDialogWidget> {
  String? nowContryCode;
  @override
  void initState() {
    super.initState();
    // Get.find<LanguageController>().getAllLanguage();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LanguageController>(
      builder: (langCon) {
        return GetBuilder<ThemeController>(
          builder: (themeCon) {
            // return ResponsiveWidget(
            //   webScreen:
            // );
            return Dialog(
              backgroundColor: const Color(0xAC000000),
              child: Container(
                height: 700,
                width: 600,
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  // Wrap with SingleChildScrollView
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            tooltip: 'Close',
                            icon: Icon(Icons.close, color: ColorRes.red),
                          ),
                        ],
                      ),
                      Center(
                        child: GlobalText(
                          str: 'menu'.tr,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      ///
                      Column(
                        children: [
                          CustomListTile(
                            leadingIcon: Icons.home_filled,
                            title: 'Home',
                            onTap: () {
                              // Get.offAll(() => const HomeScreen());
                            },
                          ),
                          CustomListTile(
                            leadingIcon: Icons.work_rounded,
                            title: 'About Me',
                            onTap: () {
                              // Get.to(() => AboutMeSection());
                            },
                          ),
                          CustomListTile(
                            leadingIcon: Icons.work_rounded,
                            title: 'Work Experiences',
                            onTap: () {
                              // Get.to(() => WorkExperiencesSection());
                            },
                          ),
                          CustomListTile(
                            leadingIcon: Icons.chrome_reader_mode,
                            title: 'Education',
                            onTap: () {
                              // Get.to(() => WebViewEducationSection());
                            },
                          ),
                          CustomListTile(
                            leadingIcon: Icons.access_alarms_outlined,
                            title: 'Projects',
                            onTap: () {
                              // Get.to(() => ProjectsScreen());
                            },
                          ),
                          // CustomListTile(
                          //   leadingIcon: Icons.document_scanner_rounded,
                          //   title: 'Resume',
                          //   onTap: () {
                          //     Get.to(() => MyResumeScreen());
                          //   },
                          // ),
                          CustomListTile(
                            leadingIcon: Icons.document_scanner_rounded,
                            title: 'My Blogs',
                            onTap: () {
                              // Get.to(() => MyBlogsScreen());
                            },
                          ),
                          CustomListTile(
                            leadingIcon: Icons.document_scanner_rounded,
                            title: 'Contact Me',
                            onTap: () {
                              // Get.to(() => ContactSection());
                            },
                          ),
                          ExpansionTile(
                            leading: Icon(Icons.settings, color: ColorRes.white),
                            title: GlobalText(str: "Settings"),
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  /// * ==@ CHANGE THEME ==
                                  Container(
                                    width: 120,
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: ColorRes.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              themeCon.toggleTheme();
                                            });
                                          },
                                          child: Container(
                                            height: 40,
                                            width: themeCon.themeValue ? 50 : 60,
                                            decoration: BoxDecoration(
                                              color:
                                                  themeCon.themeValue
                                                      ? Colors.transparent
                                                      : const Color(0xffFFDB84),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Icon(
                                              Icons.light_mode,
                                              size: 20,
                                              color: themeCon.getWhiteBlackColor(context),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              themeCon.toggleTheme();
                                            });
                                          },
                                          child: Container(
                                            height: 40,
                                            width: themeCon.themeValue ? 60 : 50,
                                            decoration: BoxDecoration(
                                              color:
                                                  themeCon.themeValue
                                                      ? const Color(0xffFFDB84)
                                                      : Colors.transparent,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Icon(
                                              Icons.dark_mode,
                                              size: 20,
                                              color: themeCon.getBlackGreyColor(context),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  sizedBoxW(10),

                                  /// * ==@ CHANGE LANGUAGES ==
                                  Spacer(),
                                  Container(
                                    width: 120,
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: ColorRes.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Get.find<LocalizationController>().setLanguage(
                                              Locale(
                                                langCon.languageNameList[0]?.langCode ?? "", langCon.languageNameList[0]?.countryCode ?? ""
                                              ),
                                            );
                                            langCon.setSelectIndex(0);
                                            setState(() {});
                                          },
                                          child: Container(
                                            height: 40,
                                            width: themeCon.themeValue ? 50 : 60,
                                            decoration: BoxDecoration(
                                              color:
                                                  langCon.selectIndex == 0
                                                      ? const Color(0xffFFDB84)
                                                      : Colors.transparent,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: GlobalText(
                                                str: langCon.languageNameList[0]?.countryCode ?? 'EN',
                                                fontSize: 18,
                                                color: Colors.white,
                                                /* color: langCon.selectIndex == 0
                                                  ? themeCon.getWhiteBlackColor(context)
                                                  : themeCon.getBlackGreyColor(context), */
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            Get.find<LocalizationController>().setLanguage(
                                              Locale(
                                                langCon.languageNameList[0]?.langCode ?? "", langCon.languageNameList[0]?.countryCode ?? ""
                                              ),
                                            );
                                            langCon.setSelectIndex(1);
                                            setState(() {});
                                          },
                                          child: Container(
                                            height: 40,
                                            width: themeCon.themeValue ? 60 : 50,
                                            decoration: BoxDecoration(
                                              color:
                                                  langCon.selectIndex == 1
                                                      ? const Color(0xffFFDB84)
                                                      : Colors.transparent,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: GlobalText(
                                                str:
                                                    langCon.languageNameList[0]?.countryCode ?? 'BN',
                                                fontSize: 18,
                                                textAlign: TextAlign.center,
                                                color: Colors.white,
                                                /* color: langCon.selectIndex == 1
                                                  ? themeCon.getWhiteBlackColor(context)
                                                  : themeCon.getBlackGreyColor(context), */
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
