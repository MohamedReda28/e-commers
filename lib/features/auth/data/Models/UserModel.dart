import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/entites/User entites.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uid});
  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
        name: user.displayName ?? '', email: user.email ?? '', uid: user.uid);
  }
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      uid: json['uid'],
    );
  }

  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(
      email: user.email,
      name: user.name,
      uid: user.uid,
    );
  }

  toMap() {
    return {
      'name': name,
      'email': email,
      'uid': uid,
    };
  }
}
