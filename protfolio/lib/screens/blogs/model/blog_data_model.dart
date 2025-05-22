class BlogDataModel {
  int? id;
  String? image;
  String? title;
  String? description;
  String? createdAt;
  String? updatedAt;

  BlogDataModel({
    this.id,
    this.image,
    this.title,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  BlogDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
    description = json['long_des'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    data['long_des'] = description;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
