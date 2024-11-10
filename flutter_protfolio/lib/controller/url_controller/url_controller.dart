import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../domain/server/http_client/app_config.dart';
import '../../domain/server/http_client/response_wrapper.dart';
import 'model/baseurl_response_wrapper.dart';

class UrlAndPlatformController extends GetxController {
  static UrlAndPlatformController get find => Get.find();
  Dio dio = Dio();

  UrlAndPlatformController() {
    log("initila base url ===>>> ");
    getBaseUrl();
  }
  UrlModelData? urlModelData;
  Future getBaseUrl() async {
    try {
      final response = await dio.get(AppConfig.baseUrlControllerUrl);
      ResponseWrapper resWrap = ResponseWrapper.fromJson(response.data);
      log("url response: ${resWrap.data}");

      if (resWrap.status == "200" && resWrap.data != null) {
        urlModelData = UrlModelData.fromJson(resWrap.data!);
        AppConfig.updateBaseUrl(urlModelData?.url);
        update();
      } else {
        AppConfig.updateBaseUrl(AppConfig.defaultBaseUrl);
        update();
      }
    } catch (error, trace) {
      if (error is Exception) {
        AppConfig.updateBaseUrl(AppConfig.defaultBaseUrl);
        log(error.toString());
        refresh();
      }
      log('#GET_USER_PROFILE', error: error, stackTrace: trace);
    }
  }

  /// * ==@ A BREAK FOR NEW METHODS * //
  bool isMobile = false;
  Future getPlatformInfo() async {
    try {
      if (kIsWeb) {
        isMobile = false;
        update();
      } else if (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android) {
        isMobile = true;
        update();
      } else if (defaultTargetPlatform == TargetPlatform.linux ||
          defaultTargetPlatform == TargetPlatform.macOS ||
          defaultTargetPlatform == TargetPlatform.windows ||
          defaultTargetPlatform == TargetPlatform.fuchsia) {
        isMobile = false;
        update();
      }
    } catch (error, trace) {
      if (error is Exception) {
        AppConfig.updateBaseUrl(AppConfig.defaultBaseUrl);
        log(error.toString());
        refresh();
      }
      log('#GET_USER_PROFILE', error: error, stackTrace: trace);
    }
  }
}
