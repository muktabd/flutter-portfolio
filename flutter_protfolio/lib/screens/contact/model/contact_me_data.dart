class OtherContactMeData {
  Info? info;

  OtherContactMeData({this.info});

  OtherContactMeData.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
  }
}

class Info {
  PersonalDetails? personalDetails;
  SocialMedia? socialMedia;

  Info({this.personalDetails, this.socialMedia});

  Info.fromJson(Map<String, dynamic> json) {
    personalDetails = json['personal_details'] != null ? PersonalDetails.fromJson(json['personal_details']) : null;
    socialMedia = json['social_media'] != null ? SocialMedia.fromJson(json['social_media']) : null;
  }
}

class PersonalDetails {
  String? email;
  String? phone;
  String? secondaryPhone;

  PersonalDetails({this.email, this.phone, this.secondaryPhone});

  PersonalDetails.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    phone = json['phone'];
    secondaryPhone = json['secondary_phone'];
  }
}

class SocialMedia {
  SocialMediaData? linkedin;
  SocialMediaData? github;
  SocialMediaData? stackoverflow;
  SocialMediaData? xtwitter;
  SocialMediaData? facebook;
  SocialMediaData? whatsapp;

  SocialMedia({
    this.linkedin,
    this.github,
    this.stackoverflow,
    this.xtwitter,
    this.facebook,
    this.whatsapp,
  });

  SocialMedia.fromJson(Map<String, dynamic> json) {
    linkedin = json['linkedin'] != null ? SocialMediaData.fromJson(json['linkedin']) : null;
    github = json['github'] != null ? SocialMediaData.fromJson(json['github']) : null;
    stackoverflow = json['stackoverflow'] != null ? SocialMediaData.fromJson(json['stackoverflow']) : null;
    xtwitter = json['xtwitter'] != null ? SocialMediaData.fromJson(json['xtwitter']) : null;
    facebook = json['facebook'] != null ? SocialMediaData.fromJson(json['facebook']) : null;
    whatsapp = json['whatsapp'] != null ? SocialMediaData.fromJson(json['whatsapp']) : null;
  }
}

class SocialMediaData {
  String? icon;
  String? url;

  SocialMediaData({this.icon, this.url});

  SocialMediaData.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    url = json['url'];
  }
}
