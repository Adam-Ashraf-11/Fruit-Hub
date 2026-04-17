import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/feature/auth/domain/entities/user_entitiy.dart';
import 'package:e_commerce_app/feature/auth/domain/repos/auth_repo.dart';

class AuthRepoImp extends AuthRepo {
  @override
  Future<Either<Failures, UserEntitiy>> createUserWithEmailAndPassword(String email, String password) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }

}

