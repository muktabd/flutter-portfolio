import 'dart:developer';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'local_storage_keys.dart';
import 'local_storage.dart';

class StorageController extends GetxController {
  SharedPreferences? prefs;
  StorageController({this.prefs});

  String? get userToken => Get.find<LocalStorage>().getString(key: StorageKeys.authToken);
  int? get userId => Get.find<LocalStorage>().getInt(key: StorageKeys.authToken);

  @override
  void onInit() {
    super.onInit();
    log("initialing preferences in storage controller ...");
    initSharePreference();
  }

  Future<void> initSharePreference() async {
    prefs = await SharedPreferences.getInstance();
    update();
  }

  saveUserToken(String token) async {
    Get.find<LocalStorage>().setString(key: StorageKeys.authToken, value: token);
    update();
  }

  saveUserId(int userId) async {
    Get.find<LocalStorage>().setInt(key: StorageKeys.authToken, value: userId);
    update();
  }

}
