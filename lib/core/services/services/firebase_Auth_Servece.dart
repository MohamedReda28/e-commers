import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../erroes/excaptins.dart';

class FirebaseAuthServece {
  Future<User> CreateUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Excaption  in CreateUserWithEmailAndPassword. ${e.toString()} code = ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمه المرور ضعيفه');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'قم بالاتصال بالانترنت');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'هذا الحساب موجود بالفعل');
      } else {
        throw CustomException(message: 'حدث خطأ,حاول لاحقا');
      }
    } catch (e) {
      log('Excaption  in CreateUserWithEmailAndPassword. ${e.toString()} ');
      throw CustomException(message: 'حدث خطأ,حاول لاحقا');
    }
  }

  Future<User> SignInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Excaption  in SignInWithEmailAndPassword. ${e.toString()}code = ${e.code}');
      if (e.code == 'user-not-found') {
        throw CustomException(
            message: 'البريد الاليكتروني او كلمه المرور غير صحيحة');
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            message: 'البريد الاليكتروني او كلمه المرور غير صحيحة');
      } else if (e.code == 'invalid-credential') {
        throw CustomException(
            message: 'البريد الاليكتروني او كلمه المرور غير صحيحة');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'قم بالاتصال بالانترنت');
      } else {
        log('Excaption  in SignInWithEmailAndPassword. ${e.toString()} code = ${e.code}');

        throw CustomException(message: 'حدث خطأ,حاول لاحقا ');
      }
    } catch (e) {
      log('Excaption  in SignInWithEmailAndPassword. ${e.toString()}');
      throw CustomException(message: 'حدث خطأ,حاول لاحقا');
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    return (await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential))
        .user!;
  }

  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      log('Exception in sendPasswordResetEmail: ${e.toString()}');
      if (e.code == 'user-not-found') {
        throw CustomException(message: 'لا يوجد حساب مرتبط بهذا البريد الإلكتروني');
      } else if (e.code == 'invalid-email') {
        throw CustomException(message: 'صيغة البريد الإلكتروني غير صحيحة');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'يرجى التحقق من الاتصال بالإنترنت');
      } else {
        throw CustomException(message: 'حدث خطأ أثناء إرسال الرابط، حاول لاحقًا');
      }
    } catch (e) {
      log('Unknown exception in sendPasswordResetEmail: ${e.toString()}');
      throw CustomException(message: 'حدث خطأ غير متوقع، حاول لاحقًا');
    }
  }



  bool isLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }

  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }
}
