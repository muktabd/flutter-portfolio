import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:portfolio/global/widgets/custom_toast.dart';

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

  Future requestReplyContactMe({
    required String to,
    required String subject,
    required String mailBody,
  }) async {
    Map<String, dynamic> params = {};
    params['to'] = to;
    params['subject'] = subject;
    params['mail_body'] = mailBody;

    try {
      final response = await dio.post(
        "${AppConfig.baseUrl}${AppConfig.contactMeReplytUri}",
        data: params,
      );
      ResponseWrapper resWrap = ResponseWrapper.fromJson(response.data);
      log("url response: ${resWrap.data}");

      if (resWrap.status == "200") {
        showToast("Reply sent successfully");
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

  Future requestDeleteContactMe({required int id}) async {
    try {
      final response = await dio.delete("${AppConfig.baseUrl}${AppConfig.contactMeDeleteUri}/$id");
      ResponseWrapper resWrap = ResponseWrapper.fromJson(response.data);
      log("url response: ${resWrap.data}");

      if (resWrap.status == "200") {
        showToast("Request deleted successfully");
        await getContactMeRequest();
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
