import 'package:flutter/material.dart';

import '../../../../components/constants.dart';

class SocalCard extends StatefulWidget {
  const SocalCard({
    super.key,
    this.iconSrc,
    this.name,
    this.color,
    this.press,
  });

  final String? iconSrc, name;
  final Color? color;
  final Function? press;

  @override
  _SocalCardState createState() => _SocalCardState();
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
            Image.asset(
              widget.iconSrc!,
              height: 80,
              width: 80,
            ),
            const SizedBox(width: kDefaultPadding),
            Text(widget.name!),
          ],
        ),
      ),
    );
  }
}
