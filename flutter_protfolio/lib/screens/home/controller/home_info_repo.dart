import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart' as rootBundle;

import '../../../domain/server/http_client/api_helper.dart';
import '../../../domain/server/http_client/response_wrapper.dart';
import '../model/home_info_data.dart';

class HomeInfoRepo extends ApiHelper {
  //
  Future<HomeInfoData?> fetchHomeInfoData() async {
    // final response = await requestHandler.get("");
    try {
      //* ==@ Load the JSON file from assets
      final String response = await rootBundle.rootBundle.loadString('assets/data/home_info.json');
      //* ==@ Parse the JSON
      final Map<String, dynamic> addressDemoResponse = json.decode(response);

      //* ==@ Create a ResponseWrapper instance (assuming you have a ResponseWrapper model)
      ResponseWrapper resWrap = ResponseWrapper.fromJson(addressDemoResponse);
      if (resWrap.status == 200) {
        return HomeInfoData.fromJson(resWrap.data ?? {});
      }
    } catch (e) {
      log("Error loading address data: $e");
    }
    return null;
  }
}
