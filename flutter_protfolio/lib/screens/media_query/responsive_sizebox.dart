import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/global/methods/sizebox_widget.dart';
import 'package:get/get.dart';

import '../../components/constants.dart';
import '../../global/constants/images.dart';
import '../../global/widgets/global_text.dart';
import '../../global/widgets/network_image_with_loader.dart';
import '../settings/theme/controller/theme_controller.dart';
import 'style_name.dart';

class ResponsiveContainer {
  ///
  static Container mobileConatiner({
    required BuildContext context,
    required String title,
    String? iconSrc,
    String? iconUrl,
    Color? titleColor,
    required VoidCallback onPressed,
    double? btnHeight,
    double? btnWidth,
    double? fontSize,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [if (isHover) kDefaultCardShadow],
      ),
      height: btnHeight ?? 50,
      width: btnWidth,
      child: Row(
        children: [
          iconUrl != null
              ? SizedBox(
                  height: btnHeight,
                  width: btnWidth,
                  child: NetworkImageWithLoader(iconUrl),
                )
              : Image.asset(
                  iconSrc ?? Images.placeholder,
                  height: btnHeight,
                  width: btnWidth,
                ),
          sizedBoxW(10),
          GlobalText(
            styleType: styleNames[StyleName.paragraph],
            str: title,
            fontSize: 12,
            color: Get.find<ThemeController>().getBlackWhiteColor(context),
          ),
        ],
      ),
    );
  }

  ///*? == GENERAL METHOD TO GET STYLES BASED ON SCREEN SIZE ==
  static Container getResponsiveContainer({
    required BuildContext parentCtx,
    required VoidCallback onPressed,
    required String title,
    double? fontSize,
    double? btnHeight,
    double? btnWidth,
    Color? btnBgColor,
    Color? titleColor,
    String? styleType,
    String? iconSrc,
    String? iconUrl,
    FontWeight? fontWeight,
  }) {
    double width = MediaQuery.of(parentCtx).size.width;

    if (kIsWeb) {
      ///* MOBILE VIEW STYLES
      if (width <= 500) {
        log("now width less then  $width < 500 ");
        return mobileConatiner(
          context: parentCtx,
          title: title,
          titleColor: titleColor,
          fontSize: fontSize,
          btnHeight: btnHeight,
          btnWidth: btnWidth,
          onPressed: onPressed,
        );
      }

      // ///? ==@ TABLET VIEW ==
      // if (width <= 768) {
      //   return tableSizeButton(
      //     context: parentCtx,
      //     onPressed: onPressed,
      //     title: title,
      //     titleColor: titleColor,
      //   );
      // }

      // /// * smallL aptop TextStyle
      // if (width <= 1024) {
      //   return laptopButton(
      //     context: parentCtx,
      //     onPressed: onPressed,
      //     title: title,
      //     titleColor: titleColor,
      //   );
      // }

      // /// * ==@ LARGE SCREEN STYLE ==
      // if (width <= 1440) {
      //   return largeButton(context: parentCtx, onPressed: onPressed, title: title);
      // } else {
      //   /// * ==@ LARGE SCREEN STYLE ==
      //   return extralargeButton(context: parentCtx, onPressed: onPressed, title: title);
      // }
    }

    /// * DEFAULT ALWAYS KEEP MOBILE VIEW ==
    return mobileConatiner(context: parentCtx, onPressed: onPressed, title: title);
  }
}
