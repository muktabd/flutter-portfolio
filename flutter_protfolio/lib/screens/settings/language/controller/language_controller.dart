import 'dart:developer';
import 'package:get/get.dart';

import '../../../../domain/server/http_client/app_config.dart';
import '../../../../domain/server/http_client/request_handler.dart';
import '../../../../domain/server/http_client/response_wrapper.dart';
import '../model/language_model.dart';

class LanguageController extends GetxController implements GetxService {
  static LanguageController get current => Get.find();


  // * MANAGE LANGUES * //
  int _selectIndex = 0;
  int get selectIndex => _selectIndex;

  void setSelectIndex(int index) {
    _selectIndex = index;
    update();
  }

  LanguageModel? languageNameList;
  Future<LanguageModel?> getAllLanguage() async {
    try {
      final response = await Get.find<RequestHandler>().get(AppConfig.getAllLanguage);
      ResponseWrapper resWrpper = ResponseWrapper.fromJson(response.data);
      if (resWrpper.status == 200) {
        languageNameList = LanguageModel.fromJson(resWrpper.data!);
        log("all language ?? $languageNameList");
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
