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
    update();
  }

  // Color Change

  Color getDartLightAppBarBackColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.dartAppBarBackColor : ColorRes.lightAppBarBackColor;
  }

  Color getDarkLightBackGroundColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.darkBackGroundColor : ColorRes.lightBackGroundColor;
  }

  Color getDartLightAppBarBack300Color(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark)
        ? ColorRes.dartAppBarBackColor.withOpacity(0.6)
        : ColorRes.lightAppBarBackColor.withOpacity(0.6);
  }

  Color getDarkLightSettingConBackColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark)
        ? ColorRes.darkSettingConBackColor.withOpacity(0.1)
        : ColorRes.grey.withOpacity(0.1);
  }

  Color getWhiteBlackColor(context) {
    final theme = Theme.of(context).brightness;
    return (theme == Brightness.dark) ? ColorRes.white : ColorRes.black;
  }

  Color getBlackWhiteColor(context) {
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
