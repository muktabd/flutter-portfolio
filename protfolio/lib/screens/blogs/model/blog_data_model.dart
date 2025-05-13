

class BlogDataModel {
  int? id;
  String? image;
  String? title;
  String? shortDes;
  String? longDes;
  String? createdAt;
  String? updatedAt;

  BlogDataModel({this.id, this.image, this.title, this.shortDes, this.longDes, this.createdAt, this.updatedAt,});

  BlogDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
    shortDes = json['short_des'];
    longDes = json['long_des'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    data['short_des'] = shortDes;
    data['long_des'] = longDes;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
