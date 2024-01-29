import 'package:json_annotation/json_annotation.dart';
import 'package:showslinger/src/data/local/DatabaseProvider.dart';

part 'contact_entity.g.dart';

@JsonSerializable()
class ContactEntity {
  @JsonKey(name: Tables.CONTACT_COLUMN_NAME)
  final String? name;
  @JsonKey(name: Tables.CONTACT_COLUMN_EMAIL)
  final String? email;
  @JsonKey(name: Tables.CONTACT_COLUMN_CITY)
  final String? city;
  @JsonKey(name: Tables.CONTACT_COLUMN_MAC)
  final String? mac;
  @JsonKey(name: Tables.CONTACT_COLUMN_TIMESTAMP)
  final String? timestamp;
  @JsonKey(name: Tables.CONTACT_COLUMN_CREDIT_CARD)
  final String? creditCard;

  const ContactEntity(
      {this.name,
      this.email,
      this.city,
      this.mac,
      this.timestamp,
      this.creditCard});

  factory ContactEntity.fromJson(Map<String, dynamic> json) {
    return _$ContactEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ContactEntityToJson(this);
}
