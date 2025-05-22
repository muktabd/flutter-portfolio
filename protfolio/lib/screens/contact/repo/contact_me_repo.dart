import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:get/get.dart';
import 'package:portfolio/global/widgets/global_text.dart';
import 'package:portfolio/global/widgets/show_custom_snackbar.dart';
import '../../../domain/server/http_client/api_helper.dart';
import '../../../domain/server/http_client/app_config.dart';
import '../../../domain/server/http_client/response_wrapper.dart';
import '../model/contact_me_data.dart';
import '../model/req_contact_me.dart';

class ContactMeRepo extends ApiHelper {
  Future<OtherSocialMediaData?> fetchOthersContactMeData() async {
    // final response = await requestHandler.get("");
    try {
      //* ==@ Load the JSON file from assets
      final String response = await rootBundle.rootBundle.loadString(
        'assets/data/other_social_media.json',
      );
      //* ==@ Parse the JSON
      final Map<String, dynamic> addressDemoResponse = json.decode(response);

      //* ==@ Create a ResponseWrapper instance (assuming you have a ResponseWrapper model)
      ResponseWrapper resWrap = ResponseWrapper.fromJson(addressDemoResponse);
      if (resWrap.status == "200") {
        return OtherSocialMediaData.fromJson(resWrap.data ?? {});
      }
    } catch (e) {
      log("Error loading address data: $e");
    }
    return null;
  }

  Future sendYourContactData({required ReqContactMe reqData}) async {
    final params = reqData.toJson();

    try {
      final response = await requestHandler.post(AppConfig.contactMeUri, params);
      log(response.toString());
      //* ==@ Create a ResponseWrapper instance (assuming you have a ResponseWrapper model)
      ResponseWrapper resWrap = ResponseWrapper.fromJson(response.data);
      if (resWrap.status == "200") {
        showDialog(
          barrierDismissible: false,
          context: Get.context!,
          builder: (BuildContext ctx) {
            return AlertDialog(
              title: GlobalText(str: resWrap.message ?? "Success"),
              content: GlobalText(
                str: resWrap.data?['response'] ?? "Your message has been sent successfully.",
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("OK"),
                ),
              ],
            );
          },
        );
      } else {
        showCustomSnackBar("${resWrap.message}\n${resWrap.data?['response']}");
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
