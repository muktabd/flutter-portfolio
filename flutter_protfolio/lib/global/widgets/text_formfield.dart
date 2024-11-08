
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../screens/settings/theme/controller/theme_controller.dart';
import '../constants/color_resources.dart';
import '../styles/font_style/montserrat.dart';
import '../styles/input_decoration.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? titleText;
  final String? hintText;
  final String? labelText;
  final TextStyle? titleStyle;
  final TextStyle? hintTextStyle;
  final TextStyle? labelTextStyle;
  final TextInputType? keyboardType;
  final InputDecoration? decoration;
  final String? initialValue;
  final bool? filled;
  final Color? fillColor;
  final bool? enabled;
  final bool? readOnly;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final Widget? sufixIcon;
  final Color? suffixIconColor;
  final int? maxLine;
  final bool? isDense;
  final bool autofocus;
  final bool autocurrent;
  final String? obscuringCharacter;
  final bool isPasswordField;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    this.controller,
    this.titleText,
    this.labelText,
    this.hintText,
    this.titleStyle,
    this.labelTextStyle,
    this.hintTextStyle,
    this.keyboardType,
    this.decoration,
    this.initialValue,
    this.enabled,
    this.filled = false,
    this.fillColor,
    this.prefixIcon,
    this.prefixIconColor,
    this.sufixIcon,
    this.suffixIconColor,
    this.maxLine,
    this.readOnly,
    this.validator,
    this.obscuringCharacter,
    this.floatingLabelBehavior,
    this.isPasswordField = false,
    this.autofocus = false,
    this.autocurrent = false,
    this.isDense = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    if (widget.isPasswordField) isVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeController) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.titleText == null
              ? const SizedBox.shrink()
              : Text(widget.titleText ?? "",
            style: widget.titleStyle ?? montserratSemiBold.copyWith(color: themeController.getBlackWhiteColor(context)),
            overflow: TextOverflow.ellipsis,
          ),
          /// When I give the title text it will take the sizedbox
          widget.titleText != null ? const SizedBox(height: 6) : const SizedBox.shrink(),
          TextFormField(
            autofocus: widget.autofocus,
            enabled: widget.enabled,
            autocorrect: widget.autocurrent,
            readOnly: widget.readOnly ?? false,
            enableIMEPersonalizedLearning: false,
            initialValue: widget.initialValue,
            controller: widget.controller,
            obscureText: isVisible,
            obscuringCharacter: widget.obscuringCharacter ?? "•",
            keyboardType: widget.keyboardType,
            maxLines: widget.maxLine ?? 1,
            decoration: widget.decoration?.copyWith(
              isDense: widget.isDense,
              hintText: widget.hintText,
              hintStyle: widget.hintTextStyle ?? montserratMedium,
              labelText: widget.labelText,
              labelStyle: widget.labelTextStyle,
              prefixIcon: widget.prefixIcon,
              filled: widget.filled,
              fillColor: widget.fillColor,
              floatingLabelBehavior: widget.floatingLabelBehavior,
              /// When the visibility icon is neededIf isPasswordField is set-
              /// -to true in suffixIcon, auto visibility icon will appear
              suffixIcon: widget.isPasswordField
                  ? IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                icon: Icon(
                  isVisible ? Icons.visibility_off : Icons.visibility,
                  color: ColorRes.grey,
                ),
              ) : widget.sufixIcon,
            ) ?? inputDecoration.copyWith(
              isDense: widget.isDense,
              hintText: widget.hintText,
              hintStyle: widget.hintTextStyle ?? montserratMedium,
              labelText: widget.labelText,
              labelStyle: widget.labelTextStyle,
              prefixIcon: widget.prefixIcon,
              filled: widget.filled,
              fillColor: widget.fillColor,
              floatingLabelBehavior: widget.floatingLabelBehavior,
              /// When the visibility icon is neededIf isPasswordField is set-
              /// -to true in suffixIcon, auto visibility icon will appear
              suffixIcon: widget.isPasswordField
                  ? IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                icon: Icon(
                  isVisible ? Icons.visibility_off : Icons.visibility,
                  color: ColorRes.grey,
                ),
              ) : widget.sufixIcon,
            ),
            cursorColor: ColorRes.grey,
            validator: widget.validator ?? (val){
              if(val!.isEmpty){
                if (widget.labelText != null){
                  return "${widget.labelText} is required!";
                }
                return "This filed is required!";
              }
              return null;
            },
            style: const TextStyle(color: ColorRes.grey),
          ),
        ],
      );
    });
  }
}