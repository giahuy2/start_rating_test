// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_back_counter_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedBackCounterResponse _$FeedBackCounterResponseFromJson(
    Map<String, dynamic> json) {
  return _FeedBackCounterResponse.fromJson(json);
}

/// @nodoc
mixin _$FeedBackCounterResponse {
  @JsonKey(name: 'bad')
  int? get bad => throw _privateConstructorUsedError;
  @JsonKey(name: 'good')
  int? get good => throw _privateConstructorUsedError;
  @JsonKey(name: 'normal')
  int? get normal => throw _privateConstructorUsedError;
  @JsonKey(name: 'very_good')
  int? get veryGood => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedBackCounterResponseCopyWith<FeedBackCounterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedBackCounterResponseCopyWith<$Res> {
  factory $FeedBackCounterResponseCopyWith(FeedBackCounterResponse value,
          $Res Function(FeedBackCounterResponse) then) =
      _$FeedBackCounterResponseCopyWithImpl<$Res, FeedBackCounterResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bad') int? bad,
      @JsonKey(name: 'good') int? good,
      @JsonKey(name: 'normal') int? normal,
      @JsonKey(name: 'very_good') int? veryGood});
}

/// @nodoc
class _$FeedBackCounterResponseCopyWithImpl<$Res,
        $Val extends FeedBackCounterResponse>
    implements $FeedBackCounterResponseCopyWith<$Res> {
  _$FeedBackCounterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bad = freezed,
    Object? good = freezed,
    Object? normal = freezed,
    Object? veryGood = freezed,
  }) {
    return _then(_value.copyWith(
      bad: freezed == bad
          ? _value.bad
          : bad // ignore: cast_nullable_to_non_nullable
              as int?,
      good: freezed == good
          ? _value.good
          : good // ignore: cast_nullable_to_non_nullable
              as int?,
      normal: freezed == normal
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as int?,
      veryGood: freezed == veryGood
          ? _value.veryGood
          : veryGood // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedBackCounterResponseImplCopyWith<$Res>
    implements $FeedBackCounterResponseCopyWith<$Res> {
  factory _$$FeedBackCounterResponseImplCopyWith(
          _$FeedBackCounterResponseImpl value,
          $Res Function(_$FeedBackCounterResponseImpl) then) =
      __$$FeedBackCounterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bad') int? bad,
      @JsonKey(name: 'good') int? good,
      @JsonKey(name: 'normal') int? normal,
      @JsonKey(name: 'very_good') int? veryGood});
}

/// @nodoc
class __$$FeedBackCounterResponseImplCopyWithImpl<$Res>
    extends _$FeedBackCounterResponseCopyWithImpl<$Res,
        _$FeedBackCounterResponseImpl>
    implements _$$FeedBackCounterResponseImplCopyWith<$Res> {
  __$$FeedBackCounterResponseImplCopyWithImpl(
      _$FeedBackCounterResponseImpl _value,
      $Res Function(_$FeedBackCounterResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bad = freezed,
    Object? good = freezed,
    Object? normal = freezed,
    Object? veryGood = freezed,
  }) {
    return _then(_$FeedBackCounterResponseImpl(
      bad: freezed == bad
          ? _value.bad
          : bad // ignore: cast_nullable_to_non_nullable
              as int?,
      good: freezed == good
          ? _value.good
          : good // ignore: cast_nullable_to_non_nullable
              as int?,
      normal: freezed == normal
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as int?,
      veryGood: freezed == veryGood
          ? _value.veryGood
          : veryGood // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedBackCounterResponseImpl implements _FeedBackCounterResponse {
  const _$FeedBackCounterResponseImpl(
      {@JsonKey(name: 'bad') this.bad,
      @JsonKey(name: 'good') this.good,
      @JsonKey(name: 'normal') this.normal,
      @JsonKey(name: 'very_good') this.veryGood});

  factory _$FeedBackCounterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedBackCounterResponseImplFromJson(json);

  @override
  @JsonKey(name: 'bad')
  final int? bad;
  @override
  @JsonKey(name: 'good')
  final int? good;
  @override
  @JsonKey(name: 'normal')
  final int? normal;
  @override
  @JsonKey(name: 'very_good')
  final int? veryGood;

  @override
  String toString() {
    return 'FeedBackCounterResponse(bad: $bad, good: $good, normal: $normal, veryGood: $veryGood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedBackCounterResponseImpl &&
            (identical(other.bad, bad) || other.bad == bad) &&
            (identical(other.good, good) || other.good == good) &&
            (identical(other.normal, normal) || other.normal == normal) &&
            (identical(other.veryGood, veryGood) ||
                other.veryGood == veryGood));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bad, good, normal, veryGood);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedBackCounterResponseImplCopyWith<_$FeedBackCounterResponseImpl>
      get copyWith => __$$FeedBackCounterResponseImplCopyWithImpl<
          _$FeedBackCounterResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedBackCounterResponseImplToJson(
      this,
    );
  }
}

abstract class _FeedBackCounterResponse implements FeedBackCounterResponse {
  const factory _FeedBackCounterResponse(
          {@JsonKey(name: 'bad') final int? bad,
          @JsonKey(name: 'good') final int? good,
          @JsonKey(name: 'normal') final int? normal,
          @JsonKey(name: 'very_good') final int? veryGood}) =
      _$FeedBackCounterResponseImpl;

  factory _FeedBackCounterResponse.fromJson(Map<String, dynamic> json) =
      _$FeedBackCounterResponseImpl.fromJson;

  @override
  @JsonKey(name: 'bad')
  int? get bad;
  @override
  @JsonKey(name: 'good')
  int? get good;
  @override
  @JsonKey(name: 'normal')
  int? get normal;
  @override
  @JsonKey(name: 'very_good')
  int? get veryGood;
  @override
  @JsonKey(ignore: true)
  _$$FeedBackCounterResponseImplCopyWith<_$FeedBackCounterResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
