import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/color_resources.dart';
import '../../global/styles/font_style/montserrat.dart';
import '../settings/theme/controller/theme_controller.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? automaticallyImplyLeading;
  final bool? centerTitle, isActionRequired;
  final String? title;
  final Color? textColor;
  final Color? backgroundColor;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? bottom;

  const CustomAppBar({
    super.key,
    this.automaticallyImplyLeading,
    this.centerTitle,
    this.title,
    this.textColor,
    this.backgroundColor,
    this.leading,
    this.actions,
    this.isActionRequired,
    this.bottom,
  });

  @override
  Size get preferredSize => Size.fromHeight(
        bottom != null ? kToolbarHeight + 50 : kToolbarHeight,
      );

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeController) {
        return AppBar(
          backgroundColor: backgroundColor ?? themeController.getDartLightAppBarBackColor(context),
          automaticallyImplyLeading: automaticallyImplyLeading ?? true,
          centerTitle: centerTitle ?? true,
          elevation: 0,
          title: Text(
            title ?? "",
            style: montserratSemiBold.copyWith(
              color: textColor ?? ColorRes.getWhiteBlackColor(context),
            ),
          ),
          leading: leading ??
              IconButton(
                splashRadius: 0.1,
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: ColorRes.getWhiteBlackColor(context),
                  size: 16,
                ),
              ),
          bottom: bottom as PreferredSizeWidget?,
          actions: isActionRequired == true
              ? [
                  GestureDetector(
                    onTap: () {},
                  ),
                ]
              : actions,
        );
      },
    );
  }
}
