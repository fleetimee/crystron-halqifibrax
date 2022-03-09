class ResponseAPI {
  bool? sukses;
  String? data;

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
