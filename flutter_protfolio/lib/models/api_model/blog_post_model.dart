class BlogPostModel {
  String? status;
  String? code;
  List<Results>? results;

  BlogPostModel({this.status, this.code, this.results});

  BlogPostModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['code'] = code;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? id;
  String? image;
  String? title;
  String? shortDes;
  String? longDes;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  Results(
      {this.id,
      this.image,
      this.title,
      this.shortDes,
      this.longDes,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
    shortDes = json['short_des'];
    longDes = json['long_des'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
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
    data['deleted_at'] = deletedAt;
    return data;
  }
}
