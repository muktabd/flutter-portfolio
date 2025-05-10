import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_info_controller.dart';

class TypewriterWidget extends StatelessWidget {
  final double? fontSize;
  const TypewriterWidget({super.key, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeInfoController>(
      builder: (homeInfoCon) {
        List<TypewriterAnimatedText> typeWriter = [
          TypewriterAnimatedText(
            "${homeInfoCon.infoDetails?.info?.workFields?.nativeAndroid}",
            cursor: "|",
            textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: fontSize ?? 20,
              color: Color(0xFFFFF200),
            ),
            speed: const Duration(milliseconds: 130),
          ),
          TypewriterAnimatedText(
            "${homeInfoCon.infoDetails?.info?.workFields?.flutter}",
            cursor: "_",
            textStyle: TextStyle(
              fontSize: fontSize ?? 20,
              color: Color(0xFFFF9D00),
            ),
            speed: const Duration(milliseconds: 150),
          ),
          TypewriterAnimatedText(
            "${homeInfoCon.infoDetails?.info?.workFields?.nodejs}",
            cursor: "|",
            textStyle: TextStyle(
              fontSize: fontSize ?? 20,
              color: Color(0xFFFFF200),
            ),
            speed: const Duration(milliseconds: 180),
          ),
          TypewriterAnimatedText(
            "${homeInfoCon.infoDetails?.info?.workFields?.springBoot}",
            cursor: "_",
            textStyle: TextStyle(
              fontSize: fontSize ?? 20,
              color: Color(0xFFFF9D00),
            ),
            speed: const Duration(milliseconds: 200),
          ),
          TypewriterAnimatedText(
            "${homeInfoCon.infoDetails?.info?.workFields?.vuejs}",
            cursor: "_|",
            textStyle: TextStyle(
              fontSize: fontSize ?? 20,
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
