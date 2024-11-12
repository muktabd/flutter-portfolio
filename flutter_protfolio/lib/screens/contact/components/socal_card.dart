import 'package:flutter/material.dart';
import 'package:flutter_portfolio/global/widgets/global_text.dart';
import 'package:flutter_portfolio/global/widgets/network_image_with_loader.dart';

import '../../../components/constants.dart';
import '../../../global/constants/images.dart';

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
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2,
          horizontal: kDefaultPadding * 1.5,
        ),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            widget.iconUrl != null
                ? SizedBox(
                    height: 80,
                    width: 80,
                    child: NetworkImageWithLoader(widget.iconUrl ?? Images.newtWorkImageUrl),
                  )
                : Image.asset(
                    widget.iconSrc ?? Images.placeholder,
                    height: 80,
                    width: 80,
                  ),
            const SizedBox(width: kDefaultPadding),
            GlobalText(str: widget.name ?? '-'),
          ],
        ),
      ),
    );
  }
}
