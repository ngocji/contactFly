import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:showslinger/src/data/local/DatabaseProvider.dart';

part 'contact_entity.freezed.dart';

part 'contact_entity.g.dart';

@freezed
class ContactEntity with _$ContactEntity {
  const factory ContactEntity({
    @JsonKey(name: Tables.CONTACT_COLUMN_NAME) String? name,
    @JsonKey(name: Tables.CONTACT_COLUMN_EMAIL) String? email,
    @JsonKey(name: Tables.CONTACT_COLUMN_CITY) String? city,
    @JsonKey(name: Tables.CONTACT_COLUMN_MAC) String? mac,
    @JsonKey(name: Tables.CONTACT_COLUMN_TIMESTAMP) String? timestamp,
    @JsonKey(name: Tables.CONTACT_COLUMN_CREDIT_CARD) String? creditcard,
  }) = _ContactEntity;

  factory ContactEntity.fromJson(Map<String, Object?> json) =>
      _$ContactEntityFromJson(json);
}
