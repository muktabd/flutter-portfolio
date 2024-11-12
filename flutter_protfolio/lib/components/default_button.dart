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
