class HomeInfoData {
  Info? info;

  HomeInfoData({this.info});

  HomeInfoData.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
  }
}

class Info {
  String? background;
  String? firstName;
  String? lastName;
  String? designation;
  WorkFields? workFields;
  SocialMedia? socialMedia;
  Thoughts? thoughts;

  Info({
    this.background,
    this.firstName,
    this.lastName,
    this.designation,
    this.workFields,
    this.socialMedia,
    this.thoughts,
  });

  Info.fromJson(Map<String, dynamic> json) {
    background = json['background'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    designation = json['designation'];
    workFields = json['work_fields'] != null ? WorkFields.fromJson(json['work_fields']) : null;
    socialMedia = json['social_media'] != null ? SocialMedia.fromJson(json['social_media']) : null;
    thoughts = json['thoughts'] != null ? Thoughts.fromJson(json['thoughts']) : null;
  }
}

class WorkFields {
  String? nativeAndroid;
  String? flutter;
  String? nodejs;
  String? springBoot;
  String? vuejs;

  WorkFields({
    this.nativeAndroid,
    this.flutter,
    this.nodejs,
    this.springBoot,
    this.vuejs,
  });

  WorkFields.fromJson(Map<String, dynamic> json) {
    nativeAndroid = json['native_android'];
    flutter = json['flutter'];
    nodejs = json['nodejs'];
    springBoot = json['spring_boot'];
    vuejs = json['vuejs'];
  }
}

class SocialMedia {
  Linkedin? linkedin;
  Linkedin? github;
  Linkedin? stackoverflow;
  Linkedin? xtwitter;
  Linkedin? facebook;

  SocialMedia({
    this.linkedin,
    this.github,
    this.stackoverflow,
    this.xtwitter,
    this.facebook,
  });

  SocialMedia.fromJson(Map<String, dynamic> json) {
    linkedin = json['linkedin'] != null ? Linkedin.fromJson(json['linkedin']) : null;
    github = json['github'] != null ? Linkedin.fromJson(json['github']) : null;
    stackoverflow = json['stackoverflow'] != null ? Linkedin.fromJson(json['stackoverflow']) : null;
    xtwitter = json['xtwitter'] != null ? Linkedin.fromJson(json['xtwitter']) : null;
    facebook = json['facebook'] != null ? Linkedin.fromJson(json['facebook']) : null;
  }
}

class Linkedin {
  String? icon;
  String? url;

  Linkedin({this.icon, this.url});

  Linkedin.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    url = json['url'];
  }
}

class Thoughts {
  String? title;
  String? subtitle;

  Thoughts({this.title, this.subtitle});

  Thoughts.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
  }
}
