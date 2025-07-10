//
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'domain/local/preferences/local_storage.dart';
import 'screens/blogs/controller/blog_post_controller.dart';
import 'screens/contact/controller/contact_me_controller.dart';
import 'domain/server/http_client/request_handler.dart';
import 'localization/localization_controller.dart';
import 'screens/landing/controller/home_info_controller.dart';
import 'screens/settings/language/controller/language_controller.dart';
import 'screens/settings/theme/controller/theme_controller.dart';

Future init(LocalStorage localStorage) async {
  final prefs = localStorage.sharedPreference;
  Get.lazyPut(() => localStorage, fenix: true);
  log("status of pref : $prefs");

  Get.lazyPut<ThemeController>(() => ThemeController());
  Get.lazyPut(() => RequestHandler(dio: Dio()), fenix: true);
  Get.lazyPut(() => LanguageController(), fenix: true);

  //
  // await Get.find<LanguageController>().getAllLanguage();
  //
  final homeCon = Get.put(HomeInfoController());
  await homeCon.getHomeInfoData();

  Get.put(BlogPostController());
  Get.put(ContactMeController());

  Get.lazyPut(() => RequestHandler(dio: Dio()));
  Get.lazyPut(() => ThemeController());
  Get.lazyPut(() => LocalizationController());
}
