import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/constants.dart';
import '../../../../controller/url_controller/url_controller.dart';
import '../../../settings/theme/controller/theme_controller.dart';

class SkillSectionTitle extends StatelessWidget {
  const SkillSectionTitle({
    super.key,
    this.title,
    this.subTitle,
    this.color,
  });

  final String? title, subTitle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UrlController>(builder: (urlnPlatformCon) {
      return GetBuilder<ThemeController>(builder: (themeCon) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          constraints: const BoxConstraints(maxWidth: 1110),
          height: 100,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: kDefaultPadding),
                padding: const EdgeInsets.only(bottom: 72),
                width: 8,
                height: 100,
                color: Color(0xFF007BBE),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    subTitle!,
                    style: const TextStyle(fontWeight: FontWeight.w200, color: Color(0xFF181816)),
                  ),
                  Text(title!, style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        );
      });
    });
  }
}
