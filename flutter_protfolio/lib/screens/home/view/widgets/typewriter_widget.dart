import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../media_query/media_query_style.dart';
import '../../../media_query/style_name.dart';
import '../../controller/home_info_controller.dart';

class TypewriterWidget extends StatefulWidget {
  const TypewriterWidget({super.key});

  @override
  State<TypewriterWidget> createState() => _TypewriterWidgetState();
}

class _TypewriterWidgetState extends State<TypewriterWidget> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeInfoController>(
      builder: (homeInfoCon) {
        List<TypewriterAnimatedText> typeWriter = [
          TypewriterAnimatedText(
            "${homeInfoCon.infoDetails?.info?.workFields?.nativeAndroid}",
            cursor: "|",
            textStyle: ResponsiveTextStyles.getTextStyle(
              parentCtx: context,
              styleType: styleNames[StyleName.bodyTitle],
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color(0xFFFFF200),
            ),
            speed: const Duration(milliseconds: 130),
          ),
          TypewriterAnimatedText(
            "${homeInfoCon.infoDetails?.info?.workFields?.flutter}",
            cursor: "_",
            textStyle: ResponsiveTextStyles.getTextStyle(
              styleType: styleNames[StyleName.bodyTitle],
              parentCtx: context,
              fontSize: 20,
              color: Color(0xFFFF9D00),
            ),
            speed: const Duration(milliseconds: 150),
          ),
          TypewriterAnimatedText(
            "${homeInfoCon.infoDetails?.info?.workFields?.nodejs}",
            cursor: "|",
            textStyle: ResponsiveTextStyles.getTextStyle(
              styleType: styleNames[StyleName.bodyTitle],
              parentCtx: context,
              fontSize: 20,
              color: Color(0xFFFFF200),
            ),
            speed: const Duration(milliseconds: 180),
          ),
          TypewriterAnimatedText(
            "${homeInfoCon.infoDetails?.info?.workFields?.springBoot}",
            cursor: "_",
            textStyle: ResponsiveTextStyles.getTextStyle(
              styleType: styleNames[StyleName.bodyTitle],
              parentCtx: context,
              fontSize: 20,
              color: Color(0xFFFF9D00),
            ),
            speed: const Duration(milliseconds: 200),
          ),
          TypewriterAnimatedText(
            "${homeInfoCon.infoDetails?.info?.workFields?.vuejs}",
            cursor: "_|",
            textStyle: ResponsiveTextStyles.getTextStyle(
              styleType: styleNames[StyleName.bodyTitle],
              parentCtx: context,
              fontSize: 20,
              color: Color(0xFFFFF200),
            ),
            speed: const Duration(milliseconds: 230),
          ),
        ];

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: AnimatedTextKit(
            repeatForever: true,
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
            animatedTexts: typeWriter,
          ),
        );
      },
    );
  }
}
