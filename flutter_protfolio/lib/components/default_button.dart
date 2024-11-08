import 'package:flutter/material.dart';

import 'constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    this.imageSrc,
    this.text,
    this.press,
    this.color,
  });

  final String? imageSrc, text;
  final Function? press;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: color ?? const Color(0xFFE8F0F9),
      ),
      onPressed: press as void Function()?,
      child: Row(
        children: [
          Image.asset(imageSrc!, height: 40),
          const SizedBox(width: kDefaultPadding),
          Text(text!),
        ],
      ),
    );
  }
}
class DefaultNetworkButton extends StatelessWidget {
  const DefaultNetworkButton({
    super.key,
    this.imageSrc,
    this.text,
    this.press,
    this.color,
    this.radius,
  });

  final String? imageSrc, text;
  final Function? press;

  final Color? color;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding,
        ),
        shape: StadiumBorder()/* RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? 50)) */,
        backgroundColor: color ?? const Color(0xFFE8F0F9),
      ),
      onPressed: press as void Function()?,
      child: Row(
        children: [
          Image.network(imageSrc!, height: 40),
          if(text != null) const SizedBox(width: kDefaultPadding/2),
          if(text != null) Text(text!),
        ],
      ),
    );
  }
}
