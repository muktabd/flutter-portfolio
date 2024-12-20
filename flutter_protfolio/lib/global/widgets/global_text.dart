import 'package:flutter/material.dart';
import 'package:flutter_portfolio/controller/url_controller/url_controller.dart';
import 'package:get/get.dart';

import '../../screens/media_query/media_query_style.dart';
import '../../screens/settings/theme/controller/theme_controller.dart';

class GlobalText extends StatelessWidget {
  final String str;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final TextDecoration? decoration;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final bool? softwrap;
  final double? height;
  final String? styleType;

  const GlobalText({
    super.key,
    required this.str,
    this.fontWeight,
    this.fontSize,
    this.fontStyle,
    this.color,
    this.letterSpacing,
    this.decoration,
    this.maxLines,
    this.textAlign,
    this.overflow,
    this.softwrap,
    this.height,
    this.styleType,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UrlAndPlatformController>(
      builder: (urlnPlatformCon) {
        return GetBuilder<ThemeController>(
          builder: (themeCon) {
            return Flexible(
              child: Text(
                str,
                maxLines: maxLines,
                overflow: overflow,
                textAlign: textAlign,
                softWrap: softwrap,
                style: ResponsiveTextStyles.getTextStyle(
                  styleType: styleType,
                  parentCtx: context,
                  color: color,
                  fontSize: fontSize,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
