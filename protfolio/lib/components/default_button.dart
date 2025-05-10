import 'package:flutter/material.dart';

import 'constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, this.imageSrc, this.text, this.onPress, this.color});

  final String? imageSrc, text;
  final Function? onPress;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: color ?? const Color(0x50061A30),
      ),
      onPressed: onPress as void Function()?,
      child: Row(
        children: [Image.asset(imageSrc!, height: 40), const SizedBox(width: kDefaultPadding), Text(text ?? "")],
      ),
    );
  }
}
