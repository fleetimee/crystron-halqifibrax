// ignore_for_file: unnecessary_question_mark, prefer_collection_literals, unnecessary_this, unnecessary_new

class ResponseAPI {
  bool? sukses;
  dynamic? data;

  ResponseAPI({this.sukses, this.data});

  ResponseAPI.fromJson(Map<String, dynamic> json) {
    sukses = json['sukses'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sukses'] = this.sukses;
    data['data'] = this.data;
    return data;
  }
}

class Data {
  int? id;
  String? username;
  String? email;
  String? password;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.username,
      this.email,
      this.password,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
