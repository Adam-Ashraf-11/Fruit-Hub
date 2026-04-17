import 'package:e_commerce_app/feature/auth/domain/entities/user_entitiy.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.email,
    required super.uId,
    required super.name,
  });

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      email: user.email ?? '',
      uId: user.uid ,
      name: user.displayName ?? '',
    );
  }
}
