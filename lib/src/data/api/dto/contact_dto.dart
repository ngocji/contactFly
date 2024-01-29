import 'package:json_annotation/json_annotation.dart';
import 'package:showslinger/src/data/local/entity/contact_entity.dart';

part 'contact_dto.g.dart';

@JsonSerializable()
class ContactDto {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "city")
  final String? city;
  @JsonKey(name: "mac")
  final String? mac;
  @JsonKey(name: "timestamp")
  final String? timestamp;
  @JsonKey(name: "creditcard")
  final String? creditCard;

  const ContactDto(
      {this.name,
      this.email,
      this.city,
      this.mac,
      this.timestamp,
      this.creditCard});

  factory ContactDto.fromJson(Map<String, dynamic> json) {
    return _$ContactDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ContactDtoToJson(this);
}

extension ContactDtoExt on ContactDto {
  ContactEntity? toEntity() {
    return ContactEntity.fromJson(toJson());
  }
}
