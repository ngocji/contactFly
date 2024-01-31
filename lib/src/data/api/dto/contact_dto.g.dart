// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactDtoImpl _$$ContactDtoImplFromJson(Map<String, dynamic> json) =>
    _$ContactDtoImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      city: json['city'] as String?,
      mac: json['mac'] as String?,
      timestamp: json['timestamp'] as String?,
      creditcard: json['creditcard'] as String?,
    );

Map<String, dynamic> _$$ContactDtoImplToJson(_$ContactDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'city': instance.city,
      'mac': instance.mac,
      'timestamp': instance.timestamp,
      'creditcard': instance.creditcard,
    };
