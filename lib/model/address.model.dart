import 'dart:convert';

class AddressModel {
  String? street;
  String? district;
  String? zipCode;

  AddressModel({
    this.street,
    this.district,
    this.zipCode,
  });

  AddressModel copyWith({
    String? street,
    String? district,
    String? zipCode,
  }) {
    return AddressModel(
      street: street ?? this.street,
      district: district ?? this.district,
      zipCode: zipCode ?? this.zipCode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'street': street,
      'district': district,
      'zipCode': zipCode,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      street: map['street'],
      district: map['district'],
      zipCode: map['zipCode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'AddressModel(street: $street, district: $district, zipCode: $zipCode)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AddressModel &&
        other.street == street &&
        other.district == district &&
        other.zipCode == zipCode;
  }

  @override
  int get hashCode => street.hashCode ^ district.hashCode ^ zipCode.hashCode;
}
