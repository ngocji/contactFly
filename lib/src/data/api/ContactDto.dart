class ContactDto {
  String? _name;
  String? _email;
  String? _city;
  String? _mac;
  String? _timestamp;
  String? _creditCard;

  ContactDto({
    String? name,
    String? email,
    String? city,
    String? mac,
    String? timestamp,
    String? creditCard,
  }) {
    _name = name;
    _email = email;
    _city = city;
    _mac = mac;
    _timestamp = timestamp;
    _creditCard = creditCard;
  }

  ContactDto.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _city = json['city'];
    _mac = json['mac'];
    _timestamp = json['timestamp'];
    _creditCard = json['creditcard'];
  }

  String? get name => _name;

  String? get email => _email;

  String? get city => _city;

  String? get mac => _mac;

  String? get timestamp => _timestamp;

  String? get creditCard => _creditCard;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['city'] = _city;
    map['mac'] = _mac;
    map['timestamp'] = _timestamp;
    map['creditcard'] = _creditCard;
    return map;
  }
}
