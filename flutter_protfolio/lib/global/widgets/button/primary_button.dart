import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/global/widgets/global_text.dart';

import '../../../screens/settings/theme/controller/theme_controller.dart';
import '../../constants/color_resources.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final Widget? icon;
  final Color? color;
  final Color? borderColor;
  final double? textSize;
  final Color? textColor;
  final VoidCallback onPressed;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final TextAlign? textAlign;

  const CustomButtonWidget({
    super.key,
    required this.text,
    this.height,
    this.width,
    this.icon,
    this.color,
    this.borderColor,
    this.textSize,
    this.textColor,
    required this.onPressed,
    this.borderRadius,
    this.padding,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeController) {
        return Container(
          height: height ?? 50,
          width: width ?? MediaQuery.of(context).size.width,
          padding: padding,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: color ?? ColorRes.getButtonColor(context),
              // shadowColor: ColorRes.red,
              side: BorderSide(color: borderColor ?? Colors.transparent, width: 0.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius ?? 8),
                ),
              ),
            ),
            child: icon != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon ?? const SizedBox.shrink(),
                      const SizedBox(width: 5),
                      GlobalText(
                        str: text,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: textColor ?? themeController.getBlackWhiteColor(context),
                      ),
                    ],
                  )
                : GlobalText(
                    str: text,
                    fontSize: textSize ?? 14,
                    fontWeight: FontWeight.w400,
                    color: textColor ?? themeController.getBlackWhiteColor(context),
                  ),
          ),
        );
      },
    );
  }
}
