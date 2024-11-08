import 'package:shared_preferences/shared_preferences.dart';
import '../../../global/methods/show_toast.dart';
import 'local_storage_keys.dart';

class LocalStorage {
  SharedPreferences? _sharedPrefInstance;

  SharedPreferences? get sharedPreference => _sharedPrefInstance;

  Future<void> initLocalStorage(prefs) async {
    printTest('initializing SharedPreferences...');
    _sharedPrefInstance = prefs;
  }

  void setBool({
    required StorageKeys key,
    required bool value,
  }) async {
    await sharedPreference?.setBool(key.name, value);
  }

  bool? getBool({required StorageKeys key}) {
    return sharedPreference?.getBool(key.name);
  }

  void setString({
    required StorageKeys key,
    required String? value,
  }) async {
    await sharedPreference?.setString(key.name, value!);
  }

  String? getString({required StorageKeys key}) {
    return sharedPreference?.getString(key.name);
  }

  void setInt({
    required StorageKeys key,
    required int? value,
  }) async {
    await sharedPreference?.setInt(key.name, value!);
  }

  int? getInt({required StorageKeys key}) {
    return sharedPreference?.getInt(key.name);
  }

  Future<bool?> removeLocalData({required StorageKeys key}) {
    return sharedPreference!.remove(key.name);
  }

  Future<bool>? clearLocalStorage() {
    return sharedPreference?.clear();
  }

  String getCurrentLanguage() {
    return sharedPreference?.getString(StorageKeys.langCode.name) ?? "en";
  }
}
