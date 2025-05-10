class ProjectModelData {
  ProjectModelData({required this.icon, required this.title, required this.desciption, required this.platformName});

  String icon;
  String title;
  String desciption;
  List<PlatformName> platformName;
}

class PlatformName {
  PlatformName({required this.icon, required this.name, required this.url, required this.videoUrl});

  String icon;
  String name;
  String url;
  String videoUrl;
}
