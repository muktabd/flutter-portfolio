import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../domain/local/preferences/local_storage.dart';
import '../../../../domain/local/preferences/local_storage_keys.dart';
import '../../../../global/constants/color_resources.dart';

class ThemeController extends GetxController implements GetxService {
  @override
  onInit() async {
    super.onInit();
    await _loadCurrentTheme();
    update();
  }

  bool _darkTheme = true;
  bool get themeValue => _darkTheme;

  void toggleDartTheme() {
    _darkTheme = true;
    Get.find<LocalStorage>().setBool(key: StorageKeys.theme, value: _darkTheme);
    update();
  }

  void toggleLightTheme() {
    _darkTheme = false;
    Get.find<LocalStorage>().setBool(key: StorageKeys.theme, value: _darkTheme);
    update();
  }

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    Get.find<LocalStorage>().setBool(key: StorageKeys.theme, value: _darkTheme);
    update();
  }

  Future<void> _loadCurrentTheme() async {
    bool? storedTheme = Get.find<LocalStorage>().getBool(key: StorageKeys.theme);
    _darkTheme = storedTheme ?? true;
    log("Stored theme: $_darkTheme");
    update();
  }

  ///* ==================================================================== ///
  /// * ==@ Color Change
  Color getImageBlueColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.imageBlueColor : ColorRes.imageBlueColor;
  }

  Color getButtonColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.red : ColorRes.white;
  }

  Color getYellowColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.yellow : ColorRes.white;
  }

  Color getBlackWhiteColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.black : ColorRes.white;
  }

  Color getWhiteBlackColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.white : ColorRes.black;
  }

  Color getBlackGreyColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.black : ColorRes.grey;
  }

  Color getWhiteDeep300Color(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.white : ColorRes.deep300;
  }

  Color getWhitePrimaryColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.white : ColorRes.primacyColor;
  }

  Color getGoldBlueColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.gold : ColorRes.blue;
  }

  Color getHomeMenuBackColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.dartAppBarBackColor : ColorRes.greyShadded200;
  }

  Color getHomeTechMenuColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.courseCardColor.withOpacity(0.3) : ColorRes.crimColor;
  }

  Color getHomeTechMenuBarColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.backColor : ColorRes.grey;
  }

  Color getHomeTechMenuShadowColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.backColor.withOpacity(0.3) : ColorRes.grey.withOpacity(0.3);
  }
}
