import 'package:freezed_annotation/freezed_annotation.dart';
part 'feed_back_counter_response.freezed.dart';
part 'feed_back_counter_response.g.dart';

@freezed
class FeedBackCounterResponse with _$FeedBackCounterResponse {
  const factory FeedBackCounterResponse({
    @JsonKey(name: 'bad') int? bad,
    @JsonKey(name: 'good') int? good,
    @JsonKey(name: 'normal') int? normal,
    @JsonKey(name: 'very_good') int? veryGood,
  }) = _FeedBackCounterResponse;

  factory FeedBackCounterResponse.fromJson(Map<String, dynamic> json) => _$FeedBackCounterResponseFromJson(json);
}