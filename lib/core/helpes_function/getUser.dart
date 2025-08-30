import 'dart:convert';
import 'package:fruts_store/constsns.dart';
import 'package:fruts_store/core/services/services/shardpreferance_Singlton.dart';
import 'package:fruts_store/features/auth/data/Models/UserModel.dart';

import '../../features/auth/domain/entites/User_Entites.dart';

UserEntity getUser() {
  var jsonString = SharPref.getString(kUserData);
  var userEntity = UserModel.fromJson(jsonDecode(jsonString));
  return userEntity;
}
