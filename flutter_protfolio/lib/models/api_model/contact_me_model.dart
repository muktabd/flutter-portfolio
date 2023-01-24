class ContactMeModel {
  String? status;
  String? code;
  Data? data;

  ContactMeModel({this.status, this.code, this.data});

  ContactMeModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? name;
  String? email;
  String? phone;
  String? projectType;
  String? projectDes;

  Data({this.name, this.email, this.phone, this.projectType, this.projectDes});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    projectType = json['project_type'];
    projectDes = json['project_des'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['project_type'] = projectType;
    data['project_des'] = projectDes;
    return data;
  }
}
