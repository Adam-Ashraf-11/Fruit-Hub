import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app/feature/auth/domain/entities/user_entitiy.dart';
import 'package:e_commerce_app/feature/auth/domain/repos/auth_repo.dart';

class AuthRepoImp extends AuthRepo {
  final FirebaseAuthService firebaseAuthService ;
  AuthRepoImp({required this.firebaseAuthService});
  @override
  Future<Either<Failures, UserEntitiy>> createUserWithEmailAndPassword(String email, String password) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }

}

