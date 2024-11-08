import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_portfolio/screens/home/home_screen.dart';
import 'package:flutter_portfolio/screens/settings/theme/data/light_theme.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF212741),
  ));
  final prefs = await SharedPreferences.getInstance();

  LocalStorage localStorage = LocalStorage();
  await localStorage.initLocalStorage(prefs);
  await init(prefs);
  await loadLanguages();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeController) {
      return GetBuilder<LocalizationController>(builder: (localizeController) {
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
          home: const HomeScreen(),
        );
      });
    });
  }
}
