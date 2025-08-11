import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../domain/server/http_client/app_config.dart';
import '../../domain/server/http_client/response_wrapper.dart';
import '../model/asking_to_contact.dart';

class AdminController extends GetxController {
  static AdminController get find => Get.find();
  Dio dio = Dio();

  AdminController() {
    log("initila base url ===>>> ");
    // getBaseUrl();
  }

  AskingToContact? askingToContact;
  Future getContactMeRequest() async {
    try {
      final response = await dio.get("${AppConfig.baseUrl}${AppConfig.contactMeRequestUri}");
      ResponseWrapper resWrap = ResponseWrapper.fromJson(response.data);
      log("url response: ${resWrap.data}");

      if (resWrap.status == "200") {
        askingToContact = AskingToContact.fromJson(resWrap.data ?? {});
        update();
      }
    } catch (error, trace) {
      if (error is Exception) {
        log(error.toString());
        refresh();
      }
      log('#GET_USER_PROFILE', error: error, stackTrace: trace);
    }
  }
}
