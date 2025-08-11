import 'package:flutter/material.dart';

import 'global_text.dart';

class CustomListTile extends StatelessWidget {
  final IconData? leadingIcon;
  final Widget? leadingWidget;
  final double? horizontal;
  final double? vertical;
  final Color? iconColor;
  final double? iconSize;
  final String? title;
  final Widget? subTitleWidget;
  final String? subTitle;
  final Widget? trailingWidget;
  final IconData? trailingIcon;
  final void Function()? onTap;
  final EdgeInsetsGeometry? contentPadding;
  final double? horizontalTitleGap;

  const CustomListTile({
    super.key,
    this.leadingIcon,
    this.leadingWidget,
    this.iconColor,
    this.iconSize,
    this.horizontal,
    this.vertical,
    this.title,
    this.subTitleWidget,
    this.subTitle,
    this.trailingWidget,
    this.trailingIcon,
    this.onTap,
    this.contentPadding,
    this.horizontalTitleGap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: contentPadding,
      minVerticalPadding: 5.0,
      horizontalTitleGap: horizontalTitleGap ?? 8.0,
      leading: leadingWidget ?? (leadingIcon != null ? Icon(leadingIcon) : null),
      visualDensity: VisualDensity(horizontal: horizontal ?? -2, vertical: vertical ?? -2),
      minLeadingWidth: 0,
      onTap: onTap,
      title:
          (title?.isNotEmpty ?? false)
              ? Padding(
                padding: EdgeInsets.only(top: subTitle == null ? 5.0 : 0.0),
                child: GlobalText(str: title ?? '', color: Colors.white),
              )
              : null,
      trailing: trailingWidget ?? Icon(trailingIcon, color: iconColor),
      subtitle:
          subTitleWidget ??
          ((subTitle?.isNotEmpty ?? false)
              ? GlobalText(str: subTitle ?? '', fontSize: 12, fontWeight: FontWeight.w400)
              : null),
    );
  }
}
