import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../screens/settings/theme/controller/theme_controller.dart';

class GlobalText extends StatelessWidget {
  final String str;
  final bool? isHtml;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final TextDecoration? decoration;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final bool? softWrap;
  final double? height;
  final String? fontFamily;

  const GlobalText({
    super.key,
    required this.str,
    this.isHtml = false,
    this.fontWeight,
    this.fontSize,
    this.fontStyle,
    this.color,
    this.letterSpacing,
    this.decoration,
    this.maxLines,
    this.textAlign,
    this.overflow,
    this.softWrap,
    this.height,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    final h = height ?? .08;
    final fw = fontSize ?? 14;
    final double fontHeight = h * fw;
    return GetBuilder<ThemeController>(
      builder: (themeController) {
        return isHtml == false
            ? Text(
                str,
                maxLines: maxLines,
                overflow: overflow,
                textAlign: textAlign,
                softWrap: softWrap,
                style: fontFamily != null
                    ? TextStyle(
                        color: color ?? themeController.getWhiteBlackColor(context),
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                        letterSpacing: letterSpacing,
                        decoration: decoration,
                        height: height == null ? null : fontHeight,
                        fontStyle: fontStyle,
                        fontFamily: fontFamily,
                      )
                    : GoogleFonts.roboto(
                        color: color ?? themeController.getWhiteBlackColor(context),
                        fontSize: fontSize ?? 14,
                        fontWeight: fontWeight,
                        letterSpacing: letterSpacing,
                        decoration: decoration,
                        height: height == null ? null : fontHeight,
                        fontStyle: fontStyle,
                        // fontFamily: fontFamily ?? AppConstantKey.fontFamily.key,
                      ),
              )
            : Html(
                data: str,
                style: const {
                  // "p.fancy": Style(
                  // textAlign: TextAlign.center,
                  // padding: HtmlPaddings.all(5.0),
                  // backgroundColor: Colors.grey,
                  // margin: Margins(left: Margin(50, Unit.px), right: Margin.auto()),
                  // width: Width(300, Unit.px),
                  // fontWeight: FontWeight.bold,
                  // ),
                },
              );
      },
    );
  }
}
