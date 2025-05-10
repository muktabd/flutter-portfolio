import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/services.dart' as rootBundle;
import '../../../../domain/server/http_client/response_wrapper.dart';
import '../model/language_model.dart';

class LanguageController extends GetxController implements GetxService {
  static LanguageController get current => Get.find();

  // * MANAGE LANGUES * //
  int _selectIndex = 0;
  int get selectIndex => _selectIndex;

  void setSelectIndex(int index) {
    _selectIndex = index;
    // log('log ?? $index');
    update();
  }

  LanguageData? languageNameList;
  Future<LanguageData?> getAllLanguage() async {
    try {
      final String response = await rootBundle.rootBundle.loadString('assets/data/languages.json');
      //* ==@ Parse the JSON
      final Map<String, dynamic> addressDemoResponse = json.decode(response);
      //* ==@ Create a ResponseWrapper instance (assuming you have a ResponseWrapper model)
      ResponseWrapper resWrap = ResponseWrapper.fromJson(addressDemoResponse);
      if (resWrap.status == "200") {
        languageNameList = LanguageData.fromJson(resWrap.data ?? {});
        // log("all language ?? $languageNameList");
        return languageNameList;
      } else {
        return null;
      }
    } catch (e, s) {
      log('Error: ', error: e, stackTrace: s);
      rethrow;
    }
  }
}
