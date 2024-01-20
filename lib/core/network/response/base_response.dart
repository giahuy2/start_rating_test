import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@Freezed(genericArgumentFactories: true)
class ResponseWrapper<T> with _$ResponseWrapper<T>{
  const factory ResponseWrapper ({
    final String? status,
    final T? data,
  }) = _ResponseWrapper;

  factory ResponseWrapper.fromJson(Map<String, dynamic> json,
      T Function(Object? json) fromJsonT)
  => _$ResponseWrapperFromJson<T>(json, fromJsonT);
}