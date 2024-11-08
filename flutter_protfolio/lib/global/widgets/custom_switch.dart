// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final bool? isAndroid;
  final bool? value;
  final Color? activeColor;
  final Color? focusColor;
  final void Function(bool)? onChanged;

  const CustomSwitch({
    super.key,
    this.isAndroid,
    required this.onChanged,
    required this.value,
    this.activeColor,
    this.focusColor,
  });

  @override
  Widget build(BuildContext context) {
    return isAndroid == true
        ? Switch(
            value: value!,
            onChanged: onChanged,
            activeColor: activeColor,
            focusColor: focusColor,
          )
        : Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: value!,
              onChanged: onChanged!,
              activeColor: activeColor,
              focusColor: focusColor,
            ),
          );
  }
}

class CustomCheckBox extends StatelessWidget {
  final String? title;
  final bool? value;
  final Color? activeColor;
  final bool? enabled;
  final ListTileControlAffinity listTileControlAffinity;
  final void Function(bool?)? onChanged;
  const CustomCheckBox({
    super.key,
    required this.value,
    this.title,
    this.activeColor,
    this.enabled,
    this.listTileControlAffinity = ListTileControlAffinity.platform,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      title: Text("$title"),
      enabled: enabled,
      controlAffinity: listTileControlAffinity,
      onChanged: onChanged,
    );
  }
}
