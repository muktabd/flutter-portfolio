import 'dart:developer';
import 'package:get/get.dart';
import '../model/language_model.dart';

class LanguageController extends GetxController implements GetxService {
  static LanguageController get current => Get.find();

  // * MANAGE LANGUES * //
  int _selectIndex = 0;
  int get selectIndex => _selectIndex;

  void setSelectIndex(int index) {
    _selectIndex = index;
    log('log ?? $index');
    update();
  }

  List<LanguageDetails?> languageNameList = [
    LanguageDetails(
      id: 1,
      langName: 'English',
      engName: 'English',
      langCode: "en",
      countryCode: 'US',
      flagUrl: '',
    ),
    LanguageDetails(
      id: 2,
      langName: 'বাংলা',
      engName: 'Bengali',
      langCode: "bn",
      countryCode: 'US',
      flagUrl: '',
    ),
  ];
}
