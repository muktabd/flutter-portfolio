import 'package:flutter/material.dart';

import 'global_text.dart';

class CustomListTile extends StatelessWidget {
  final IconData? leadingIcon;
  final Widget? leadingWidget;
  final Color? iconColor;
  final double? iconSize;
  final String title;
  final Widget? subTitleWidget;
  final String? subTitle;
  final Widget? trailingWidget;
  final IconData? trailingIcon;
  final void Function()? onTap;
  final double? contentPadding;

  const CustomListTile({
    super.key,
    this.leadingIcon,
    this.leadingWidget,
    this.iconColor,
    this.iconSize,
    required this.title,
    this.subTitleWidget,
    this.subTitle,
    this.trailingWidget,
    this.trailingIcon,
    this.onTap,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          contentPadding == null ? const EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0, bottom: 5.0) : EdgeInsets.all(contentPadding ?? 10.0),
      minVerticalPadding: 5.0,
      leading: leadingWidget ?? (leadingIcon != null ? Icon(leadingIcon, color: iconColor, size: iconSize ?? 25) : null),
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      minLeadingWidth: 0,
      onTap: onTap,
      title: Text(title),
      trailing: trailingWidget ?? Icon(trailingIcon, color: iconColor),
      subtitle: subTitleWidget ??
          GlobalText(
            str: subTitle ?? '',
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
    );
  }
}
