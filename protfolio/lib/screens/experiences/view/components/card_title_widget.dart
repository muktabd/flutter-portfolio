import 'package:flutter/material.dart';
import 'package:portfolio/global/widgets/global_text.dart';
import 'package:get/get.dart';

import '../../../../components/constants.dart';
import '../../../settings/theme/controller/theme_controller.dart';

class CardTitleWidget extends StatelessWidget {
  const CardTitleWidget({super.key, this.title, this.subTitle, this.color});

  final String? title, subTitle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeCon) {
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
                child: DecoratedBox(decoration: BoxDecoration(color: color ?? Colors.yellow.shade900)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GlobalText(str: title ?? "", fontSize: 35.0, fontWeight: FontWeight.bold),
                  GlobalText(str: subTitle ?? "", fontWeight: FontWeight.w500, fontSize: 20.0),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
