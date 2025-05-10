import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/global/widgets/global_text.dart';
import '/global/widgets/network_image_with_loader.dart';
import '../../../components/constants.dart';
import '../../../global/constants/images.dart';
import '../../settings/theme/controller/theme_controller.dart';

class SocalCard extends StatefulWidget {
  const SocalCard({
    super.key,
    this.iconUrl,
    this.iconSrc,
    this.name,
    this.color,
    this.press,
  });

  final String? iconSrc, name, iconUrl;
  final Color? color;
  final Function? press;

  @override
  State<SocalCard> createState() => _SocalCardState();
}

class _SocalCardState extends State<SocalCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press as void Function()?,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            widget.iconUrl != null
                ? SizedBox(
                    height: 50,
                    width: 50,
                    child: NetworkImageWithLoader(widget.iconUrl ?? Images.newtWorkImageUrl),
                  )
                : Image.asset(
                    widget.iconSrc ?? Images.placeholder,
                    height: 50,
                    width: 50,
                  ),
            SizedBox(width: 10),
            GlobalText(
              str: widget.name ?? '-',
              fontSize: 12,
              color: Get.find<ThemeController>().getBlackWhiteColor(context),
            )
          ],
        ),
      ),
    );
  }
}
