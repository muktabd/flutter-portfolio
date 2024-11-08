import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../domain/local/preferences/local_storage.dart';
import '../domain/local/preferences/local_storage_keys.dart';

class LocalizationController extends GetxController implements GetxService {
  LocalizationController() {
    loadCurrentLanguage();
  }

  Locale _locale = const Locale("en", "US");
  bool _isLtr = true;
  Locale get locale => _locale;
  bool get isLtr => _isLtr;

  void setLanguage(Locale locale) {
    Get.updateLocale(locale);
    _locale = locale;
    if (_locale.languageCode == 'en') {
      _isLtr = false;
    } else {
      _isLtr = true;
    }
    saveLanguage(_locale);
    update();
  }

  void loadCurrentLanguage() async {
    _locale = Locale(
      Get.find<LocalStorage>().getString(key: StorageKeys.langCode) ?? "en",
      Get.find<LocalStorage>().getString(key: StorageKeys.countryCode) ?? "US",
    );
    _isLtr = _locale.languageCode != 'en';
    update();
  }

  void saveLanguage(Locale locale) async {
    Get.find<LocalStorage>().setString(key: StorageKeys.langCode, value: locale.languageCode);
    Get.find<LocalStorage>().setString(key: StorageKeys.countryCode, value: locale.countryCode);
  }
}
