import 'package:showslinger/src/domain/contact.dart';

class ContactEntity extends Contact {
  factory ContactEntity.fromJson(dynamic json) {
    return ContactEntity(
        name: json['name'],
        email: json['email'],
        city: json['city'],
        mac: json['mac'],
        timestamp: json['timestamp'],
        creditCard: json['creditcard']);
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['city'] = city;
    map['mac'] = mac;
    map['timestamp'] = timestamp;
    map['creditcard'] = creditCard;
    return map;
  }

  const ContactEntity(
      {super.name,
      super.email,
      super.city,
      super.mac,
      super.timestamp,
      super.creditCard});
}
