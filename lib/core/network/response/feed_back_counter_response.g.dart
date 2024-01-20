// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_back_counter_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedBackCounterResponseImpl _$$FeedBackCounterResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedBackCounterResponseImpl(
      bad: json['bad'] as int?,
      good: json['good'] as int?,
      normal: json['normal'] as int?,
      veryGood: json['very_good'] as int?,
    );

Map<String, dynamic> _$$FeedBackCounterResponseImplToJson(
        _$FeedBackCounterResponseImpl instance) =>
    <String, dynamic>{
      'bad': instance.bad,
      'good': instance.good,
      'normal': instance.normal,
      'very_good': instance.veryGood,
    };
