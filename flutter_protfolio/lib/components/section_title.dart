import 'package:flutter/material.dart';
import 'package:flutter_portfolio/global/methods/sizebox_widget.dart';
import 'package:flutter_portfolio/global/widgets/global_text.dart';

import 'constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    this.title,
    this.subTitle,
    this.color,
  });

  final String? title, subTitle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      child: Row(
        children: [
          Container(
            // margin: const EdgeInsets.only(left: 50.0),
            padding: const EdgeInsets.only(bottom: 50.0),
            width: 8,
            height: 100,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
          sizedBoxW(8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GlobalText(
                str: title ?? '',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: color ?? Colors.black,
              ),
              sizedBoxH(0.0),
              GlobalText(
                str: subTitle ?? '',
                maxLines: 2,
                overflow: TextOverflow.fade,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
