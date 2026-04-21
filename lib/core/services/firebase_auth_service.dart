import 'dart:developer';
import 'package:e_commerce_app/core/errors/exeptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {


 Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  //! Create User With Email And Password
  Future<User?> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          throw CustomExeptions(
            message: 'كلمة المرور يجب ان تحتوي على 6 حروف على الاقل.',
          );
        case 'email-already-in-use':
          throw CustomExeptions(message: 'البريد الإلكتروني مستخدم بالفعل.');
        case 'invalid-email':
          throw CustomExeptions(message: 'البريد الإلكتروني غير صحيح.');
        case 'operation-not-allowed':
          throw CustomExeptions(message: 'البريد الإلكتروني غير مسموح به.');
        case 'network-request-failed':
          throw CustomExeptions(message: 'لا يوجد اتصال بالانترنت.');
        case 'too-many-requests':
          throw CustomExeptions(
            message: 'تم تجاوز الحد المسموح به من الطلبات.',
          );
        default:
          throw CustomExeptions(message: 'حدث خطاء غير معروف.');
      }
    } catch (e) {
      throw CustomExeptions(message: 'حدث خطاء غير معروف.');
    }
  }

  //! Create Sign In With Email And Password
  Future<User?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user.user;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
        case 'user-disabled':
          throw CustomExeptions(
            message: 'البريد الإلكتروني غير مسجل أو محظور.',
          );
        case 'wrong-password':
        case 'invalid-credential': // أضف هذا السطر ضروري جداً
          throw CustomExeptions(
            message: 'البريد الإلكتروني أو كلمة المرور غير صحيحة.',
          );
        case 'network-request-failed':
          throw CustomExeptions(message: 'تأكد من اتصالك بالانترنت.');
        default:
          log(
            'Firebase Auth Error Code: ${e.code}',
          ); // سيعلمك بالكود المفقود في الـ console
          throw CustomExeptions(message: 'حدث خطأ أثناء تسجيل الدخول.');
      }
    } catch (e) {
      throw CustomExeptions(message: 'حدث خطاء غير معروف.');
    }
  }

  //! Create Sign In With Google
  Future<User?> signInWithGoogle() async {
    await GoogleSignIn().signOut();
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    if (googleAuth?.accessToken != null || googleAuth?.idToken != null) {
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithCredential(credential);
      return userCredential.user;
    }
    return null;
  }

//! Create Sign In With Facebook
  Future<User> signInWithFacebook() async {
  final LoginResult loginResult = await FacebookAuth.instance.login();

  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

  return (await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential)).user!;

}


}