import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/local/preferences/local_storage.dart';
import '../../domain/local/preferences/local_storage_keys.dart'; // Adjust import path

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final isAuthorized = Get.find<LocalStorage>().getBool(key: StorageKeys.isAuthorized) == true;
    log("1 now ?? $isAuthorized");
    if (!isAuthorized) {
      return const RouteSettings(name: '/private-login');
    }
    log("2 now ?? $isAuthorized");

    return null; // Allow navigation if authorized
  }
}
