import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/color_resources.dart';

void showCustomSnackBar(
  String? message, {
  bool isError = true,
  bool isButtomPosition = false,
  double? duration,
}) {
  Get.showSnackbar(
    GetSnackBar(
      backgroundColor: isError ? ColorRes.red : ColorRes.green,
      message: message ?? '',
      maxWidth: 1170,
      duration: duration != null ? Duration(seconds: duration.toInt()) : const Duration(seconds: 3),
      snackStyle: SnackStyle.FLOATING,
      margin: const EdgeInsets.all(12),
      borderRadius: 10,
      isDismissible: true,
      snackPosition: isButtomPosition ? SnackPosition.BOTTOM : SnackPosition.TOP,
    ),
  );
}