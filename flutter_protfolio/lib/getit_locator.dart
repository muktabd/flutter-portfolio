//
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/blog_post_controller.dart';
import 'controller/contact_me_controller.dart';
import 'domain/server/http_client/request_handler.dart';
import 'localization/localization_controller.dart';
import 'screens/home/controller/home_info_controller.dart';
import 'screens/settings/language/controller/language_controller.dart';
import 'screens/settings/theme/controller/theme_controller.dart';
import 'domain/local/preferences/local_storage.dart';

Future init(SharedPreferences? localStorage) async {
  Get.put(LocalStorage());
  Get.lazyPut<ThemeController>(() => ThemeController());
  Get.lazyPut(() => RequestHandler(dio: Dio()), fenix: true);

  Get.lazyPut(() => localStorage, fenix: true);

  //
  Get.lazyPut(() => LanguageController());
  await Get.find<LanguageController>().getAllLanguage();
  //
  Get.put(HomeInfoController());
  Get.put(BlogPostController());
  Get.put(ContactMeController());

  Get.lazyPut(() => RequestHandler(dio: Dio()));
  Get.lazyPut(() => ThemeController());
  Get.lazyPut(() => LocalizationController());
}
