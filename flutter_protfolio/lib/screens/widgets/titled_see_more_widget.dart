import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/color_resources.dart';
import '../../global/styles/font_style/montserrat.dart';
import '../../global/widgets/button/text_button.dart';
import '../settings/theme/controller/theme_controller.dart';

class TitledSeeMoreWidget extends StatefulWidget {
  final String text;
  final bool moreButtonNeeded;
  final void Function()? onPressed;
  final String? buttonText;

  const TitledSeeMoreWidget({
    super.key,
    required this.text,
    this.buttonText,
    this.onPressed,
    this.moreButtonNeeded = true,
  });

  @override
  State<TitledSeeMoreWidget> createState() => _TitledSeeMoreWidgetState();
}

class _TitledSeeMoreWidgetState extends State<TitledSeeMoreWidget> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeController) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text,
                style: montserratSemiBold.copyWith(
                  color: ColorRes.getWhiteBlackColor(context),
                ),
                overflow: TextOverflow.ellipsis,
              ),
              widget.moreButtonNeeded
                  ? Align(
                      alignment: Alignment.centerRight,
                      child: CustomTextButton(
                        title: widget.buttonText ?? "see_more".tr,
                        textStyle: montserratSemiBold12.copyWith(color: ColorRes.blue),
                        onPressed: widget.onPressed ?? () {},
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        );
      },
    );
  }
}
