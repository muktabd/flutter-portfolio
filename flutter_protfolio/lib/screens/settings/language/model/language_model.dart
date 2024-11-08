class LanguageModel {
  List<LanguageDetails>? languageList;

  LanguageModel({this.languageList});

  LanguageModel.fromJson(Map<String, dynamic> json) {
    if (json['language_list'] != null) {
      languageList = <LanguageDetails>[];
      json['language_list'].forEach((v) {
        languageList!.add(LanguageDetails.fromJson(v));
      });
    }
  }
}

class LanguageDetails {
  int? id;
  String? langName;
  String? engName;
  String? countryCode;
  String? langCode;
  String? flagUrl;
  String? cratedAt;
  String? updatedAt;
  String? deletedAt;

  LanguageDetails({
    this.id,
    this.langName,
    this.engName,
    this.countryCode,
    this.langCode,
    this.flagUrl,
    this.cratedAt,
    this.updatedAt,
    this.deletedAt,
  });

  LanguageDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    langName = json['lang_name'];
    engName = json['eng_name'];
    countryCode = json['country_code'];
    langCode = json['lang_code'];
    flagUrl = json['flag_url'];
    cratedAt = json['crated_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }
}
