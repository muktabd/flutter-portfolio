import 'package:flutter/material.dart';
import '../../constants/color_resources.dart';
import '../../styles/font_style/montserrat.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final Color? textColor;
  final double? width;
  final TextStyle? textStyle;
  final VoidCallback onPressed;

  const CustomTextButton({
    super.key,
    required this.title,
    this.textColor,
    this.textStyle,
    this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(10),
        splashFactory: NoSplash.splashFactory,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        // maximumSize: Size(width ?? 200, 30),
        // minimumSize: Size(width ?? 200, 30)
      ),
      child: Text(
        title,
        style: textStyle ?? montserratSemiBold.copyWith(color: textColor ?? ColorRes.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}
