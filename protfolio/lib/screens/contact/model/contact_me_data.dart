class OtherSocialMediaData {
  Info? info;

  OtherSocialMediaData({this.info});

  OtherSocialMediaData.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
  }
}

class Info {
  PersonalDetails? personalDetails;
  List<SocialMedia>? socialMedia;

  Info({this.personalDetails, this.socialMedia});

  Info.fromJson(Map<String, dynamic> json) {
    personalDetails = json['personal_details'] != null ? PersonalDetails.fromJson(json['personal_details']) : null;
    if (json['social_media'] != null) {
      socialMedia = <SocialMedia>[];
      json['social_media'].forEach((v) {
        socialMedia!.add(SocialMedia.fromJson(v));
      });
    }
  }
}

class PersonalDetails {
  String? email;
  String? phone;
  String? secondaryPhone;
  String? skype;

  PersonalDetails({this.email, this.phone, this.secondaryPhone, this.skype});

  PersonalDetails.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    phone = json['phone'];
    secondaryPhone = json['secondary_phone'];
    skype = json['skype'];
  }
}

class SocialMedia {
  String? name;
  String? icon;
  String? url;

  SocialMedia({this.name, this.icon, this.url});

  SocialMedia.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    icon = json['icon'];
    url = json['url'];
  }
}
