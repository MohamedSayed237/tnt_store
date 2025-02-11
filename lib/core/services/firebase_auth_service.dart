import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:tnt_store/core/errors/exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';
class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(message: 'الرقم السري غير صحيح');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'البريد الالكتروني مستخدم بالفعل');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'تأكد من اتصالك بالانترنت');
      } else {
        throw CustomException(
          message: 'لقد حدث خطأ ما. برجاء المحاولة مرة اخرى',
        );
      }
    } catch (e) {
      log('Exeption in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}');
      throw CustomException(
        message: 'لقد حدث خطاء ما. برجاء المحاولة مرة اخرى',
      );
    }
  }

  Future<User> signInWithEmailAndPassword( 
      {required String email, required String password}) async {    
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(    
        email: email, 
        password: password,    
      );    
      return credential.user!;    
    } on FirebaseAuthException catch (e) {    
      if (e.code == 'user-not-found') {    
        throw CustomException(message: 'الرقم السري او البريد الالكتروني غير صحيح');    
      } else if (e.code == 'wrong-password') {    
        throw CustomException(message: 'الرقم السري او البريد الالكتروني غير صحيح');    
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'تأكد من اتصالك بالانترنت');    
      } else {
        throw CustomException(
          message: 'لقد حدث خطاء ما. برجاء المحاولة مرة اخرى',
        );
      }    
    } catch (e) {    
      log('Exeption in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}');    
      throw CustomException(
        message: 'لقد حدث خطاء ما. برجاء المحاولة مرة اخرى',
      );
    }
    }

 

Future<User> signInWithGoogle() async {
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
}
}
