import 'package:flutter/material.dart';

class TextStyles {
  //:::::::::::::::::::
  static TextStyle customText(
      String fontFamily, double fontSize, FontWeight fontWEight) {
    return TextStyle(
      fontFamily: 'fontFamily',
      fontWeight: fontWEight,
      fontSize: fontSize,
    );
  }

  //:::::::::::::::::::
  static TextStyle extraSmallTextStyle() {
    return const TextStyle(
      fontFamily: 'monserrat',
      fontSize: 14,
    );
  }

  static TextStyle smallTextStyle() {
    return const TextStyle(
      fontFamily: 'monserrat',
      fontSize: 16,
    );
  }

  static TextStyle normalTextStyle() {
    return const TextStyle(
      fontFamily: 'monserrat',
      fontSize: 18,
    );
  }

  static TextStyle largeTextStyle() {
    return const TextStyle(
      fontFamily: 'monserrat',
      fontSize: 20,
    );
  }

  static TextStyle extraLargeTextStyle() {
    return const TextStyle(
      fontFamily: 'monserrat',
      fontSize: 22,
    );
  }

  static TextStyle extraSmallBoldTextStyle() {
    return const TextStyle(
      fontFamily: 'monserrat',
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
  }

  static TextStyle smallTextBoldStyle() {
    return const TextStyle(
      fontFamily: 'monserrat',
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
  }

  static TextStyle normalTextBoldStyle() {
    return const TextStyle(
      fontFamily: 'monserrat',
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );
  }

  static TextStyle largeTextBoldStyle() {
    return const TextStyle(
      fontFamily: 'monserrat',
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );
  }

  static TextStyle extraLargeTextBoldStyle() {
    return const TextStyle(
      fontFamily: 'monserrat',
      fontWeight: FontWeight.bold,
      fontSize: 22,
    );
  }

  //:::::::::::::::::::

}
