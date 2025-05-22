import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/controller/url_controller/url_controller.dart';
import 'package:portfolio/domain/server/http_client/request_handler.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/blogs/view/webview_blog_section.dart';
import 'screens/home/view/home_screen.dart';
import 'screens/projects/more_projects.dart';
import 'screens/settings/theme/data/light_theme.dart';
import 'domain/local/preferences/local_storage.dart';
import 'domain/local/preferences/local_storage_keys.dart';
import 'initialize.dart';
import 'localization/localization_controller.dart';
import 'localization/translate.dart';
import 'localization/translator_helper.dart';
import 'screens/settings/theme/controller/theme_controller.dart';
import 'screens/settings/theme/data/dark_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Dio dio = Dio();
  final prefs = await SharedPreferences.getInstance();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarDividerColor: Colors.grey,
    ),
  );

  //

  ///
   LocalStorage localStorage = LocalStorage();
    await localStorage.initLocalStorage();
    await init(localStorage);

  ///
  await Future.delayed(const Duration(seconds: 1));
  RequestHandler(dio: dio);

  ///
  // Get.put(UrlController());
  // Get.find<UrlController>().getBaseUrl();

  await loadLanguages();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeCon) {
        return GetBuilder<LocalizationController>(
          builder: (localeCon) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Mukta',
              themeMode: ThemeMode.system,
              theme: themeCon.themeValue ? dark : light,
              locale: localeCon.locale,
              translations: Translate(languages: languages),
              fallbackLocale: Locale(
                Get.find<LocalStorage>().getString(key: StorageKeys.langCode) ?? "en",
                Get.find<LocalStorage>().getString(key: StorageKeys.countryCode) ?? "US",
              ),
              home: const HomeScreen(),
              // home: const MoreProjects(),
              // home: const AboutMeSection(),
              // home: const WorkExperiencesSection(),
              // home: const EducationSection(),
              // home: const ProjectsScreen(),
              // home: const ContactSection(),
              // home: const MyResumeScreen(),
              // home: const WebViewBlogSection(),
            );
          },
        );
      },
    );
  }
}
