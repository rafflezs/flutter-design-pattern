import 'dart:convert';
import 'package:mvc_pattern/model/address.model.dart';

class UserModel {
  String? id;
  String? name;
  String? email;
  String? role;
  String? token;
  AddressModel? address;

  UserModel(
    this.id,
    this.name,
    this.email,
    this.role,
    this.token,
    this.address,
  );

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? role,
    String? token,
    AddressModel? address,
  }) {
    return UserModel(
      id ?? this.id,
      name ?? this.name,
      email ?? this.email,
      role ?? this.role,
      token ?? this.token,
      address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'role': role,
      'token': token,
      'address': address?.toMap(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      map['id'],
      map['name'],
      map['email'],
      map['role'],
      map['token'],
      map['address'] != null ? AddressModel.fromMap(map['address']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, role: $role, token: $token, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.id == id &&
        other.name == name &&
        other.email == email &&
        other.role == role &&
        other.token == token &&
        other.address == address;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        role.hashCode ^
        token.hashCode ^
        address.hashCode;
  }
}
