import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_portfolio/controller/url_controller/url_controller.dart';
import 'package:flutter_portfolio/domain/server/http_client/request_handler.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/contact/view/contact_section.dart';
import 'screens/experiences/view/work_experiences.dart';
import 'screens/home/view/home_screen.dart';
import 'screens/settings/theme/data/light_theme.dart';
import 'domain/local/preferences/local_storage.dart';
import 'domain/local/preferences/local_storage_keys.dart';
import 'getit_locator.dart';
import 'localization/localization_controller.dart';
import 'localization/translate.dart';
import 'localization/translator_helper.dart';
import 'screens/settings/theme/controller/theme_controller.dart';
import 'screens/settings/theme/data/dark_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Dio dio = Dio();
  final prefs = await SharedPreferences.getInstance();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.black,
    systemNavigationBarDividerColor: Colors.grey,
  ));

  //

  ///
  await init(prefs);
  LocalStorage localStorage = LocalStorage();
  await localStorage.initLocalStorage(prefs);

  ///
  await Future.delayed(const Duration(seconds: 1));
  RequestHandler(dio: dio);

  ///
  Get.put(UrlController());
  Get.find<UrlController>().getBaseUrl();

  await loadLanguages();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeController) {
        return GetBuilder<LocalizationController>(
          builder: (localizeController) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Mukta',
              themeMode: ThemeMode.system,
              theme: themeController.themeValue ? dark : light,
              locale: localizeController.locale,
              translations: Translate(languages: languages),
              fallbackLocale: Locale(
                Get.find<LocalStorage>().getString(key: StorageKeys.langCode) ?? "en",
                Get.find<LocalStorage>().getString(key: StorageKeys.countryCode) ?? "US",
              ),
              home: const ContactSection(),
              // home: const MyResumeScreen(),
              // home: const WorkExperiencesScreen(),
              // home: const ProjectsScreen(),
              // home: const EducationSection(),
              // home: const HomeScreen(),
              // home: const WorkExperiencesSection(),
            );
          },
        );
      },
    );
  }
}
