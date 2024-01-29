// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactDto _$ContactDtoFromJson(Map<String, dynamic> json) => ContactDto(
      name: json['name'] as String?,
      email: json['email'] as String?,
      city: json['city'] as String?,
      mac: json['mac'] as String?,
      timestamp: json['timestamp'] as String?,
      creditCard: json['creditcard'] as String?,
    );

Map<String, dynamic> _$ContactDtoToJson(ContactDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'city': instance.city,
      'mac': instance.mac,
      'timestamp': instance.timestamp,
      'creditcard': instance.creditCard,
    };
