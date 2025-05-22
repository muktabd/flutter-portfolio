class ReqContactMe {
  String? name;
  String? email;
  String? phone;
  String? projectType;
  String? projectBrief;

  ReqContactMe({this.name, this.email, this.phone, this.projectType, this.projectBrief});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['project_type'] = projectType;
    data['project_brief'] = projectBrief;
    return data;
  }
}
