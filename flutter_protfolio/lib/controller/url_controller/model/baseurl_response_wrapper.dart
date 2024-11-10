class UrlModelData {
  int? id;
  int? projectId;
  String? url;
  String? status;
  String? developmentType;
  String? review;
  String? createdAt;
  String? updatedAt;
  ProjectDetail? projectDetail;

  UrlModelData({
    this.id,
    this.projectId,
    this.url,
    this.status,
    this.developmentType,
    this.review,
    this.createdAt,
    this.updatedAt,
    this.projectDetail,
  });

  UrlModelData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    projectId = json['project_id'];
    url = json['url'];
    status = json['status'];
    developmentType = json['development_type'];
    review = json['review'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    projectDetail = json['project_detail'] != null ? ProjectDetail.fromJson(json['project_detail']) : null;
  }
}

class ProjectDetail {
  int? id;
  String? name;
  String? clientName;
  Urls? urls;
  String? description;
  String? status;
  String? createdAt;
  String? updatedAt;

  ProjectDetail({
    this.id,
    this.name,
    this.clientName,
    this.urls,
    this.description,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  ProjectDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    clientName = json['client_name'];
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    description = json['description'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}

class Urls {
  String? stagingUrl;
  String? productionUrl;

  Urls({this.stagingUrl, this.productionUrl});

  Urls.fromJson(Map<String, dynamic> json) {
    stagingUrl = json['staging_url'];
    productionUrl = json['production_url'];
  }
}
