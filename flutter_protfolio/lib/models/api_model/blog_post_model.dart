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
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['title'] = this.title;
    data['short_des'] = this.shortDes;
    data['long_des'] = this.longDes;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
