class AskingToContact {
  int? total;
  List<Request>? request;

  AskingToContact({this.total, this.request});

  AskingToContact.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    if (json['request'] != null) {
      request = <Request>[];
      json['request'].forEach((v) {
        request!.add(Request.fromJson(v));
      });
    }
  }
}

class Request {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? projectType;
  String? projectBrief;
  String? createdAt;
  String? updatedAt;

  Request({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.projectType,
    this.projectBrief,
    this.createdAt,
    this.updatedAt,
  });

  Request.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    projectType = json['project_type'];
    projectBrief = json['project_brief'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}
