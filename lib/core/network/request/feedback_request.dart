import 'dart:convert';

/// created_at : "string"
/// id : 0
/// level : 1
/// note : "string"
/// updated_at : "string"
/// user_id : 0

FeedbackRequest feedbackRequestFromJson(String str) => FeedbackRequest.fromJson(json.decode(str));

String feedbackRequestToJson(FeedbackRequest data) => json.encode(data.toJson());

class FeedbackRequest {
  FeedbackRequest({
    String? createdAt,
    num? id,
    num? level,
    String? note,
    String? updatedAt,
    num? userId,
  }) {
    _createdAt = createdAt;
    _id = id;
    _level = level;
    _note = note;
    _updatedAt = updatedAt;
    _userId = userId;
  }

  FeedbackRequest.fromJson(dynamic json) {
    _createdAt = json['created_at'];
    _id = json['id'];
    _level = json['level'];
    _note = json['note'];
    _updatedAt = json['updated_at'];
    _userId = json['user_id'];
  }

  String? _createdAt;
  num? _id;
  num? _level;
  String? _note;
  String? _updatedAt;
  num? _userId;

  FeedbackRequest copyWith({
    String? createdAt,
    num? id,
    num? level,
    String? note,
    String? updatedAt,
    num? userId,
  }) =>
      FeedbackRequest(
        createdAt: createdAt ?? _createdAt,
        id: id ?? _id,
        level: level ?? _level,
        note: note ?? _note,
        updatedAt: updatedAt ?? _updatedAt,
        userId: userId ?? _userId,
      );

  String? get createdAt => _createdAt;

  num? get id => _id;

  num? get level => _level;

  String? get note => _note;

  String? get updatedAt => _updatedAt;

  num? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['created_at'] = _createdAt;
    map['id'] = _id;
    map['level'] = _level;
    map['note'] = _note;
    map['updated_at'] = _updatedAt;
    map['user_id'] = _userId;
    return map;
  }
}
