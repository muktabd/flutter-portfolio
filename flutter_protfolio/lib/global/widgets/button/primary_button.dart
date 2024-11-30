import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../screens/media_query/button_style.dart';
import '../../../screens/media_query/media_query_padding.dart';
import '/global/widgets/global_text.dart';
import '../../../screens/settings/theme/controller/theme_controller.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final Widget? icon;
  final String? image;
  final Color? color;
  final Color? borderColor;
  final double? textSize;
  final Color? textColor;
  final VoidCallback onPressed;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final TextAlign? textAlign;
  final String? styleType;

  const CustomButtonWidget({
    super.key,
    required this.text,
    this.height,
    this.width,
    this.icon,
    this.image,
    this.color,
    this.borderColor,
    this.textSize,
    this.textColor,
    required this.onPressed,
    this.borderRadius,
    this.padding,
    this.textAlign,
    this.styleType,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeCon) {
        return Container(
          height: height ?? 50,
          width: width ?? MediaQuery.of(context).size.width,
          padding: padding ?? ScreenPadding.getPadding(context, left: 20, right: 20),
          child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyles.getButtonStyle(context: context),
            /* style: ElevatedButton.styleFrom(
              backgroundColor: color ?? themeCon.getGoldBlueColor(context),
              // shadowColor: ColorRes.red,
              side: BorderSide(color: borderColor ?? Colors.transparent, width: 0.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius ?? 8),
                ),
              ),
            ), */
            child: icon != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // icon != null ? icon : (image != null ? Image.asset(image ?? '') : const SizedBox.shrink()),
                      icon ??
                          (image != null
                              ? Image.asset(
                                  image ?? '',
                                  fit: BoxFit.fill,
                                )
                              : const SizedBox.shrink()),
                      const SizedBox(width: 5),
                      GlobalText(
                        str: text,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: textColor ?? themeCon.getBlackWhiteColor(context),
                      ),
                    ],
                  )
                : GlobalText(
                    styleType: styleType,
                    str: text,
                    fontSize: textSize ?? 14,
                    fontWeight: FontWeight.w400,
                    color: textColor ?? themeCon.getBlackWhiteColor(context),
                  ),
          ),
        );
      },
    );
  }
}
