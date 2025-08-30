import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruts_store/constsns.dart';
import 'package:fruts_store/core/services/services/DataBase_Serveces.dart';
import 'package:fruts_store/core/services/services/shardpreferance_Singlton.dart';
import 'package:fruts_store/core/uitels/backend%20Impoint.dart';
import '../../../../core/erroes/Failur.dart';
import '../../../../core/erroes/excaptins.dart';
import '../../../../core/services/services/firebase_Auth_Servece.dart';
import '../../domain/entites/User_Entites.dart';
import '../../domain/repos/Auth Repo.dart';
import '../Models/UserModel.dart';

class Repoimplemantation extends AuthRepo {
  Repoimplemantation({
    required this.dataBaseServeces,
    required this.firebaseAuthServece,
  });

  final FirebaseAuthServece firebaseAuthServece;
  final DataBaseServeces dataBaseServeces;

  @override
  Future<Either<Failur, UserEntity>> CreateUserWithEmailAndPassword(
      String email, String password, String name) async {
    User? user;
    try {
      user = await firebaseAuthServece.CreateUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(name: name, email: email, uid: user.uid);
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        firebaseAuthServece.deleteUser();
      }
      return left(ServerFailure(e.message));
    } catch (e) {
      if (user != null) {
        firebaseAuthServece.deleteUser();
      }
      log('Excaption  in CreateUserWithEmailAndPassword. ${e.toString()}');

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failur, UserEntity>> SignWithEmailAndoPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthServece.SignInWithEmailAndPassword(
          email: email, password: password);
      var userEntity = await getUserData(uid: user.uid);
      await saveUserData(user: userEntity);

      return right(userEntity);
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Excaption in SignWithEmailAndoPassword. ${e.toString()}');
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failur, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthServece.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      var isUserExsit = await dataBaseServeces.chackIfDataExist(
          path: BackEndImpoint.isUserExist, documentId: user.uid);

      if (isUserExsit) {
        await getUserData(uid: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
      await saveUserData(user: userEntity);

      return right(userEntity);
    } on Exception catch (e) {
      if (user != null) {
        firebaseAuthServece.deleteUser();
      }
      log('Excaption in signInWithGoogle. ${e.toString()}');
      return left(ServerFailure('حدث خطأ, حاول لاحقا'));
    }
  }

  @override
  Future<Either<Failur, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthServece.signInWithFacebook();
      var userEntity = UserModel.fromFirebaseUser(user);
      var isUserExsit = await dataBaseServeces.chackIfDataExist(
          path: BackEndImpoint.isUserExist, documentId: user.uid);

      if (isUserExsit) {
        await getUserData(uid: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
      await saveUserData(user: userEntity);

      return right(userEntity);
    } on Exception catch (e) {
      if (user != null) {
        firebaseAuthServece.deleteUser();
      }
      log('Excaption in signInWithFacebook. ${e.toString()}');
      return left(ServerFailure('حدث خطأ, حاول لاحقا'));
    }
  }

  @override
  Future  addUserData({required UserEntity user}) async {
    await dataBaseServeces.addData(
      path: BackEndImpoint.addUserData,
      data: UserModel.fromEntity(user).toMap(),
      documentId: user.uid,
    );
  }

  @override
  Future<UserModel> getUserData({required String uid}) async {
    var data = await dataBaseServeces.getData(
        path: BackEndImpoint.getUserData, documentId: uid);
    return UserModel.fromJson(data);
  }

  @override
  Future saveUserData({required UserEntity user}) async {
    var jsonData = jsonEncode(UserModel.fromEntity(user).toMap());
    await SharPref.setString(kUserData, jsonData);

  }

  @override
  Future<Either<Failur, void>> sendPasswordResetEmail({required String email}) async{
    try{
      await firebaseAuthServece.sendPasswordResetEmail(email: email);
      return right(null);
    }on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Excaption in sendPasswordResetEmail. ${e.toString()}');
      return left(ServerFailure(e.toString()));
    }
  }
}
