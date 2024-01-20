import 'dart:convert';
/// id : 1
/// created_at : "2023-12-21T09:46:08.296362Z"
/// updated_at : "2023-12-21T09:46:08.296362Z"
/// url : "assets/1703151968-bg-login.png"
/// filename : "1703151968-bg-login.png"

MediaResponse mediaResponseFromJson(String str) => MediaResponse.fromJson(json.decode(str));
String mediaResponseToJson(MediaResponse data) => json.encode(data.toJson());
class MediaResponse {
  MediaResponse({
      num? id, 
      String? createdAt, 
      String? updatedAt, 
      String? url, 
      String? filename,}){
    _id = id;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _url = url;
    _filename = filename;
}

  MediaResponse.fromJson(dynamic json) {
    _id = json['id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _url = json['url'];
    _filename = json['filename'];
  }
  num? _id;
  String? _createdAt;
  String? _updatedAt;
  String? _url;
  String? _filename;
MediaResponse copyWith({  num? id,
  String? createdAt,
  String? updatedAt,
  String? url,
  String? filename,
}) => MediaResponse(  id: id ?? _id,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  url: url ?? _url,
  filename: filename ?? _filename,
);
  num? get id => _id;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get url => _url;
  String? get filename => _filename;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['url'] = _url;
    map['filename'] = _filename;
    return map;
  }

}