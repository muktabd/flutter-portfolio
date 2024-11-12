import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart' as rootBundle;
import '../../../domain/server/http_client/api_helper.dart';
import '../../../domain/server/http_client/app_config.dart';
import '../../../domain/server/http_client/response_wrapper.dart';
import '../model/contact_me_data.dart';
import '../model/req_contact_me.dart';

class ContactMeRepo extends ApiHelper {
  Future<OtherContactMeData?> fetchOthersContactMeData() async {
    // final response = await requestHandler.get("");
    try {
      //* ==@ Load the JSON file from assets
      final String response = await rootBundle.rootBundle.loadString('assets/data/other_social_media.json');
      //* ==@ Parse the JSON
      final Map<String, dynamic> addressDemoResponse = json.decode(response);

      //* ==@ Create a ResponseWrapper instance (assuming you have a ResponseWrapper model)
      ResponseWrapper resWrap = ResponseWrapper.fromJson(addressDemoResponse);
      if (resWrap.status == "200") {
        return OtherContactMeData.fromJson(resWrap.data ?? {});
      }
    } catch (e) {
      log("Error loading address data: $e");
    }
    return null;
  }

  Future<bool?> sendYourContactData({
    required ReqContactMe reqData,
  }) async {
    final params = reqData.toJson();

    try {
      final response = await requestHandler.post(AppConfig.contactMeUri, params);
      log(response.toString());
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
