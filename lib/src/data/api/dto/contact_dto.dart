import 'package:showslinger/src/domain/contact.dart';

class ContactDto extends Contact {
  factory ContactDto.fromJson(dynamic json) {
    return ContactDto(
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

  const ContactDto(
      {super.name,
      super.email,
      super.city,
      super.mac,
      super.timestamp,
      super.creditCard});
}
