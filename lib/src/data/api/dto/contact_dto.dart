import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'contact_dto.freezed.dart';
part 'contact_dto.g.dart';

@freezed
class ContactDto with _$ContactDto {
  const factory ContactDto({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'mac') String? mac,
    @JsonKey(name: 'timestamp') String? timestamp,
    @JsonKey(name: 'creditcard') String? creditcard,
  }) = _ContactDto;

  factory ContactDto.fromJson(Map<String, Object?> json) =>
      _$ContactDtoFromJson(json);
}
