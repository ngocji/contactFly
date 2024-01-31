// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactDto _$ContactDtoFromJson(Map<String, dynamic> json) {
  return _ContactDto.fromJson(json);
}

/// @nodoc
mixin _$ContactDto {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'mac')
  String? get mac => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'creditcard')
  String? get creditcard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactDtoCopyWith<ContactDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDtoCopyWith<$Res> {
  factory $ContactDtoCopyWith(
          ContactDto value, $Res Function(ContactDto) then) =
      _$ContactDtoCopyWithImpl<$Res, ContactDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'mac') String? mac,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'creditcard') String? creditcard});
}

/// @nodoc
class _$ContactDtoCopyWithImpl<$Res, $Val extends ContactDto>
    implements $ContactDtoCopyWith<$Res> {
  _$ContactDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? city = freezed,
    Object? mac = freezed,
    Object? timestamp = freezed,
    Object? creditcard = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      creditcard: freezed == creditcard
          ? _value.creditcard
          : creditcard // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactDtoImplCopyWith<$Res>
    implements $ContactDtoCopyWith<$Res> {
  factory _$$ContactDtoImplCopyWith(
          _$ContactDtoImpl value, $Res Function(_$ContactDtoImpl) then) =
      __$$ContactDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'mac') String? mac,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'creditcard') String? creditcard});
}

/// @nodoc
class __$$ContactDtoImplCopyWithImpl<$Res>
    extends _$ContactDtoCopyWithImpl<$Res, _$ContactDtoImpl>
    implements _$$ContactDtoImplCopyWith<$Res> {
  __$$ContactDtoImplCopyWithImpl(
      _$ContactDtoImpl _value, $Res Function(_$ContactDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? city = freezed,
    Object? mac = freezed,
    Object? timestamp = freezed,
    Object? creditcard = freezed,
  }) {
    return _then(_$ContactDtoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      mac: freezed == mac
          ? _value.mac
          : mac // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      creditcard: freezed == creditcard
          ? _value.creditcard
          : creditcard // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDtoImpl with DiagnosticableTreeMixin implements _ContactDto {
  const _$ContactDtoImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'city') this.city,
      @JsonKey(name: 'mac') this.mac,
      @JsonKey(name: 'timestamp') this.timestamp,
      @JsonKey(name: 'creditcard') this.creditcard});

  factory _$ContactDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDtoImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'city')
  final String? city;
  @override
  @JsonKey(name: 'mac')
  final String? mac;
  @override
  @JsonKey(name: 'timestamp')
  final String? timestamp;
  @override
  @JsonKey(name: 'creditcard')
  final String? creditcard;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactDto(name: $name, email: $email, city: $city, mac: $mac, timestamp: $timestamp, creditcard: $creditcard)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('mac', mac))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('creditcard', creditcard));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.mac, mac) || other.mac == mac) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.creditcard, creditcard) ||
                other.creditcard == creditcard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, city, mac, timestamp, creditcard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDtoImplCopyWith<_$ContactDtoImpl> get copyWith =>
      __$$ContactDtoImplCopyWithImpl<_$ContactDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDtoImplToJson(
      this,
    );
  }
}

abstract class _ContactDto implements ContactDto {
  const factory _ContactDto(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'city') final String? city,
          @JsonKey(name: 'mac') final String? mac,
          @JsonKey(name: 'timestamp') final String? timestamp,
          @JsonKey(name: 'creditcard') final String? creditcard}) =
      _$ContactDtoImpl;

  factory _ContactDto.fromJson(Map<String, dynamic> json) =
      _$ContactDtoImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'city')
  String? get city;
  @override
  @JsonKey(name: 'mac')
  String? get mac;
  @override
  @JsonKey(name: 'timestamp')
  String? get timestamp;
  @override
  @JsonKey(name: 'creditcard')
  String? get creditcard;
  @override
  @JsonKey(ignore: true)
  _$$ContactDtoImplCopyWith<_$ContactDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
