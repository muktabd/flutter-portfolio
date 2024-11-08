import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';
import '/localization/language_model.dart';

import 'package:flutter/services.dart' show rootBundle;

Map<String, Map<String, String>> languages = {};

Future<Map<String, Map<String, String>>> languageinit(LanguageModel languageModel) async {
  if (languageModel.languageList != null && languageModel.languageList!.isNotEmpty) {
    for (LanguageDetails languageDetails in languageModel.languageList!) {
      String jsonStringValues = await rootBundle.loadString('assets/languages/${languageDetails.langCode}.json');
      Map<String, dynamic> mappedJson = json.decode(jsonStringValues);

      Map<String, String> jsonVal = {};
      mappedJson.forEach((key, value) {
        jsonVal[key] = value.toString();
      });

      languages['${languageDetails.langCode}_${languageDetails.countryCode}'] = jsonVal;
    }
  }

  return languages;
}

Future<void> loadLanguages() async {
  // Manually create a list of language details instead of loading from assets
  List<LanguageDetails> languageDetailsList = [
    LanguageDetails(langCode: 'en', countryCode: 'US'),
    LanguageDetails(langCode: 'bn', countryCode: 'BD'),
  ];

  // Initialize the LanguageModel with the manually created language details
  LanguageModel languageModel = LanguageModel(languageList: languageDetailsList);

  // Load the languages based on the languageModel
  Map<String, Map<String, String>> locales = await languageinit(languageModel);

  log(locales.toString());
}
