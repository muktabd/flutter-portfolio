import 'package:flutter/material.dart';
import 'package:flutter_portfolio/global/methods/sizebox_widget.dart';
import 'package:flutter_portfolio/global/widgets/global_text.dart';
import 'package:flutter_portfolio/screens/settings/theme/controller/theme_controller.dart';
import 'package:get/get.dart';

import '../../../global/constants/color_resources.dart';

class EndDrawerWidget extends StatefulWidget {
  const EndDrawerWidget({super.key});

  @override
  State<EndDrawerWidget> createState() => _EndDrawerWidgetState();
}

class _EndDrawerWidgetState extends State<EndDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeCon) {
        return Drawer(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              // Wrap with SingleChildScrollView
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Builder(
                        builder: (context) => IconButton(
                          onPressed: () {
                            Scaffold.of(context).closeEndDrawer();
                          },
                          tooltip: 'CloseDrawer',
                          icon: Icon(Icons.close),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Center(child: Text('End Drawer Content')),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          /// * ==@ CHANGE LANGUAGES ==
                          Container(
                            width: 120,
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
                                      color: themeCon.themeValue ? Colors.transparent : const Color(0xffFFDB84),
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
                                      color: themeCon.themeValue ? const Color(0xffFFDB84) : Colors.transparent,
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

                          /// * ==@ CHANGE THEME ==
                          Container(
                            width: 120,
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
                                      color: themeCon.themeValue ? Colors.transparent : const Color(0xffFFDB84),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: GlobalText(
                                        str: 'EN',
                                        fontSize: 18,
                                        color: themeCon.getWhiteBlackColor(context),
                                      ),
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
                                      color: themeCon.themeValue ? const Color(0xffFFDB84) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: GlobalText(
                                        str: 'BN',
                                        fontSize: 18,
                                        textAlign: TextAlign.center,
                                        color: themeCon.getBlackGreyColor(context),
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
            ),
          ),
        );
      },
    );
  }
}
