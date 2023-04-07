// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import '../models/data_mode/language_model.dart';
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


  static List<LanguageModel> languages = [
    LanguageModel(imageUrl: Images.us, languageName: 'ENGLISH', countryCode: 'US', languageCode: 'en'),
    LanguageModel(imageUrl: Images.us, languageName: 'বাংলা', countryCode: 'BD', languageCode: 'bn'),
    LanguageModel(imageUrl: Images.italy, languageName: 'ITALIANO', countryCode: 'IT', languageCode: 'it'),
    LanguageModel(imageUrl: Images.arabic, languageName: 'عربى', countryCode: 'SA', languageCode: 'ar'),
    LanguageModel(imageUrl: Images.spain, languageName: 'ESPAÑOL ', countryCode: 'ES', languageCode: 'es'),
    LanguageModel(imageUrl: Images.chinese, languageName: 'CHINESE', countryCode: 'CN', languageCode: 'zh'),
    LanguageModel(imageUrl: Images.india, languageName: 'हिंदी', countryCode: 'IN', languageCode: 'hi'),
    LanguageModel(imageUrl: Images.france, languageName: 'FRANÇAISE', countryCode: 'FR', languageCode: 'fr'),
    LanguageModel(imageUrl: Images.portugues, languageName: 'PORTUGUÊS', countryCode: 'PT', languageCode: 'pt'),
  ];

}