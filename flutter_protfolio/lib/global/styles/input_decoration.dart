import 'package:flutter/material.dart';
import '../constants/color_resources.dart';
import 'font_style/montserrat.dart';

InputDecoration inputDecoration = InputDecoration(
  fillColor: ColorRes.white,
  filled: true,
  isDense: true,
  iconColor: ColorRes.grey,

  floatingLabelBehavior: FloatingLabelBehavior.always,
  labelStyle: const TextStyle(
    color: ColorRes.black,
  ),
  floatingLabelStyle: const TextStyle( color: ColorRes.blue),
  border: OutlineInputBorder(
    borderSide: const BorderSide(width: 0.8, color: ColorRes.grey,),
    borderRadius: BorderRadius.circular(18),
  ),
  errorBorder: const OutlineInputBorder(
    borderSide: BorderSide(
      width: 0.8,
      color: ColorRes.red,
    ),
  ),
  focusedErrorBorder: const OutlineInputBorder(
    borderSide: BorderSide(
      width: 0.6,
      color: ColorRes.red,
    ),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(
      width: 1,
      color: ColorRes.blue,  // Change this to the desired color
    ),
  ),
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(
      width: 0.6,
      color: ColorRes.grey,
    ),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(width: 0.6, color: ColorRes.grey,),
    borderRadius: BorderRadius.circular(8),
  ),
  suffixIconColor: ColorRes.grey,
);

InputDecoration decoration = InputDecoration(
  fillColor: ColorRes.white,
  isDense: true,
  border: OutlineInputBorder(
    borderSide: const BorderSide(width: 1.5, color: ColorRes.borderGrey),
    borderRadius: BorderRadius.circular(8),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: ColorRes.borderGrey, width: 2.5),
    borderRadius: BorderRadius.circular(8),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(width: 1.5, color: ColorRes.borderGrey),
    borderRadius: BorderRadius.circular(8),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(width: 1.5, color: ColorRes.borderGrey),
    borderRadius: BorderRadius.circular(8),
  ),
  iconColor: ColorRes.borderGrey,
  floatingLabelStyle: montserratSemiBold
      .copyWith(color: ColorRes.borderGrey, fontSize: 24),
  labelStyle: montserratSemiBold.copyWith(color: ColorRes.black),
  suffixIconColor: ColorRes.borderGrey,
  filled: true,
);
