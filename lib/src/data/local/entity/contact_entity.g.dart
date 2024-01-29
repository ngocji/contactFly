// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactEntity _$ContactEntityFromJson(Map<String, dynamic> json) =>
    ContactEntity(
      name: json['name'] as String?,
      email: json['email'] as String?,
      city: json['city'] as String?,
      mac: json['mac'] as String?,
      timestamp: json['timestamp'] as String?,
      creditCard: json['creditcard'] as String?,
    );

Map<String, dynamic> _$ContactEntityToJson(ContactEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'city': instance.city,
      'mac': instance.mac,
      'timestamp': instance.timestamp,
      'creditcard': instance.creditCard,
    };
