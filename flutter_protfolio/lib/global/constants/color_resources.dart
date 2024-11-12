import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../screens/settings/theme/controller/theme_controller.dart';

class ColorRes {
  BuildContext context;
  ColorRes(this.context);
  static ThemeController themeFind = Get.find<ThemeController>();

  /// * ==@ GRADIENT COLOR ==
  static const Color bgDarkColor1 = Color(0xFF222C5E);
  static const Color bgDarkColor2 = Color(0xE9252B48);
  static const Color bgDarkColor3 = Color(0xC4252B48);
  static const Color bgLightColor1 = Color(0xFF493434);
  static const Color bgLightColor2 = Color(0xDE493434);
  static const Color bgLightColor3 = Color(0xB3493434);

  // ==# AppBar Color
  static const Color dartAppBarBackColor = Color(0xFF252B48);
  static const Color lightAppBarBackColor = Color(0xFFFFFFFF);

  static const Color darkBackGroundColor = Color(0xFF212741);
  static const Color lightBackGroundColor = Color(0xFFEDEDED);

  static const Color darkSettingConBackColor = Color(0xFF016D94);

  static const Color darkButtonBgColor = Color(0xFF252B48);
  static const Color darkDialogBoxBgColor = Color(0xFF212741);
  static const Color darkDrawerBgColor = Color(0xFF212741);
  static const Color darkGreyColor = Color(0xFF2F375B);

  static const Color black = Color(0xFF000000);

  static const Color white = Color(0xFFFFFFFF);
  static const Color blue = Color(0xFF2196F3);
  static const Color blueAccent = Color(0xFF448AFF);
  static const Color lightBlue = Color(0xFF03A9F4);
  static const Color lightBlueAccent = Color(0xFF40C4FF);
  static const Color green = Color(0xFF4CAF50);
  static const Color greenAccent = Color(0xFF69F0AE);
  static const Color lightGreen = Color(0xFF8BC34A);
  static const Color lightGreenAccent = Color(0xFFB2FF59);
  static const Color orange = Color(0xFFFF9800);
  static const Color orangeAccent = Color(0xFFFFAB40);
  static const Color yellow = Color(0xFFFFEB3B);
  static const Color yellowAccent = Color(0xFFFFFF00);
  static const Color purple = Color(0xFF9C27B0);
  static const Color purpleAccent = Color(0xFFE040FB);
  static const Color deepPurple = Color(0xFF673AB7);
  static const Color deepPurpleAccent = Color(0xFF7C4DFF);
  static const Color grey = Color(0xFF9E9E9E);
  static const Color greyShadded = Color(0xFFEDEDED);
  static const Color greyShadded200 = Color(0xFFEFE6E6);
  static const Color blueGrey = Color(0xFF607D8B);
  static const Color red = Color(0xFFF44336);
  static const Color redAccent = Color(0xFFFF5252);
  static const Color pink = Color(0xFFE91E63);
  static const Color pinkAccent = Color(0xFFFF4081);
  static const Color cyan = Color(0xFF00BCD4);
  static const Color cyanAccent = Color(0xFF18FFFF);
  static const Color brown = Color(0xFF795548);
  static const Color bronze = Color(0xFFCD7F32);
  static const Color magenta = Color(0xFFFF00FF);
  static const Color cream = Color(0xFFFFFDD0);
  static const Color coral = Color(0xFFFF7F50);
  static const Color tan = Color(0xFFD2B48C);
  static const Color tral = Color(0xFF009688);
  static const Color lavender = Color(0xFFE6E6FA);
  static const Color mauve = Color(0xFFE0B0FF);
  static const Color gold = Color(0xFFFFD700);

  static const Color dark = Color(0xff252525);
  static const Color darkGaro = Color(0xff252B48);
  static const Color backgroundColor = Color(0xfff6f6f6);
  static const Color borderGrey = Color(0xffEFEFEF);

  /// ==/@ App Color

  static const Color primacyColor = Color(0xFF016D94);
  static const Color courseCardColor = Color(0xff535e74);
  static const Color backColor = Color(0xff252b48);
  static const Color textColor = Color(0xFF2A3256);
  static const Color crimColor = Color(0xFFD9D9D9);
  static const Color menuBackColor = Color(0xFFC4DBE5);
  static const Color socialColor = Color(0xFF40DDFF);

  static const Color white100 = Color(0xFFF6F6F6);
  static const Color white150 = Color(0xFFF5F5F5);
  static const Color white200 = Color(0xFFBDBDBD);

  static const Color deep100 = Color(0xFF7A7A7A);
  static const Color deep200 = Color(0xFF797471);
  static const Color deep250 = Color(0xFF7C7C7C);
  static const Color deep300 = Color(0xFF545454);
  static const Color deep400 = Color(0xFF2D2D2D);

  static const Map<int, Color> colorMap = {
    50: Color(0x10192D6B),
    100: Color(0x20192D6B),
    200: Color(0x30192D6B),
    300: Color(0x40192D6B),
    400: Color(0x50192D6B),
    500: Color(0x60192D6B),
    600: Color(0x70192D6B),
    700: Color(0x80192D6B),
    800: Color(0x90192D6B),
    900: Color(0xff192D6B),
  };
}
