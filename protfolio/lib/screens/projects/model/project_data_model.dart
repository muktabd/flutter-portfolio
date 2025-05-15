class ProjectModelData {
  ProjectModelData({
    required this.icon,
    required this.title,
    required this.desciption,
    this.featureProject,
    this.videoUrl,
    this.platformName,
  });

  String icon;
  String title;
  String desciption;
  bool? featureProject;
  String? videoUrl;
  List<PlatformName?>? platformName;
}

class PlatformName {
  PlatformName({this.icon, this.name, this.url});

  String? icon;
  String? name;
  String? url;
}
