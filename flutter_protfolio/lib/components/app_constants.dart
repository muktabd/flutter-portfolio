// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';

import 'images.dart';

class AppConstants{
  BuildContext context;
  AppConstants(this.context);
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;

  //static final paddingTopZero = EdgeInsets.fromLTRB(15.w, 0, 15.w, 10.h);
  //static final paddingBottomZero = EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 10.h);
 // static final paddingLTRB = Padding(padding: EdgeInsets.fromLTRB(15.w, 0, 15.w, 10.h));

  static const String theme = 'theme';
  static const String countryCode = 'country_code';
  static const String languageCode = 'language_code';
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  //static GlobalKey<FormState> formKey = GlobalKey<FormState>();

  

  static String baseUrl = "http://muktabd.info";
  //static String baseUrl = "localhost:3000";
  static String imageUri = "http://muktabd.info/post_images/image_1672958017642.jpeg";
  static String loginUri = "/admin/login";
  static String createPostUri = "/create/post";
  static String getAllPostUri = "/get/all/posts";
  static String contactMeUri = "/contact/me";


}