import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/exeptions.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app/feature/auth/data/models/user_model.dart';
import 'package:e_commerce_app/feature/auth/domain/entities/user_entitiy.dart';
import 'package:e_commerce_app/feature/auth/domain/repos/auth_repo.dart';

class AuthRepoImp extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImp({required this.firebaseAuthService});
  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user!));
    } on CustomExeptions catch (e) {
      return left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signinWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user!));
    } on CustomExeptions catch (e) {
      return left(ServerFailure(e.message));
    }
  }
}
