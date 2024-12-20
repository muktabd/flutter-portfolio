import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../domain/server/http_client/app_config.dart';
import '../../domain/server/http_client/response_wrapper.dart';
import '../model/baseurl_response_wrapper.dart';

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
  //
  bool isMobile = false;
  bool isTab = false;
  bool isLaptop = false;

  void webDetectSize(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    log('trying to detect size ?? $width');
    if (width <= 500) {
      isMobile = true;
      isTab = false;
      isLaptop = false;
      log("Now is mobile: $isMobile");
    } else if (width <= 768) {
      isMobile = false;
      isTab = true;
      isLaptop = false;
      log("Now is tablet: $isTab");
    } else if (width <= 1024) {
      isMobile = false;
      isTab = false;
      isLaptop = true;
      log("Now is laptop: $isLaptop");
    }

    update();
  }
}
