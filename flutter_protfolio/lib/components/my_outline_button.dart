import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key? key,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String? imageSrc, text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          side: const BorderSide(color: Color(0xFFEDEDED)),
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2.5,
          ),
        ),
        onPressed: press as void Function()?,
        child: Row(
          children: [
          Image.asset(
            imageSrc!,
            height: 40,
          ),
          const SizedBox(width: kDefaultPadding),
          Text(text!)
          ],
        ),
      ),
    );
  }
}
