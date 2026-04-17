import 'package:e_commerce_app/core/errors/exeptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
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
}
